.class public abstract Lcom/alibaba/sdk/android/mns/model/deserialize/XMLDeserializer;
.super Lcom/alibaba/sdk/android/mns/model/serialize/BaseXMLSerializer;
.source ""

# interfaces
.implements Lcom/alibaba/sdk/android/mns/model/deserialize/Deserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/sdk/android/mns/model/serialize/BaseXMLSerializer<",
        "TT;>;",
        "Lcom/alibaba/sdk/android/mns/model/deserialize/Deserializer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/serialize/BaseXMLSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public safeGetElementContent(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p3
.end method
