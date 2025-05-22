.class public Lcom/alibaba/sdk/android/mns/model/serialize/XmlUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljavax/xml/transform/TransformerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/mns/model/serialize/XmlUtil;->a:Ljavax/xml/transform/TransformerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static output(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/mns/model/serialize/XmlUtil;->a:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const-string v1, "encoding"

    invoke-virtual {v0, v1, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {p1}, Ljavax/xml/transform/dom/DOMSource;-><init>()V

    invoke-virtual {p1, p0}, Ljavax/xml/transform/dom/DOMSource;->setNode(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0}, Ljavax/xml/transform/stream/StreamResult;-><init>()V

    invoke-virtual {p0, p2}, Ljavax/xml/transform/stream/StreamResult;->setOutputStream(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    return-void
.end method

.method public static xmlNodeToString(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/mns/model/serialize/XmlUtil;->a:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const-string v1, "encoding"

    invoke-virtual {v0, v1, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1}, Ljavax/xml/transform/dom/DOMSource;-><init>()V

    invoke-virtual {v1, p0}, Ljavax/xml/transform/dom/DOMSource;->setNode(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v1, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
