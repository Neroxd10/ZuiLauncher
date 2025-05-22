.class public abstract Lcom/alibaba/sdk/android/mns/model/serialize/XMLSerializer;
.super Lcom/alibaba/sdk/android/mns/model/serialize/BaseXMLSerializer;
.source ""

# interfaces
.implements Lcom/alibaba/sdk/android/mns/model/serialize/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/sdk/android/mns/model/serialize/BaseXMLSerializer<",
        "TT;>;",
        "Lcom/alibaba/sdk/android/mns/model/serialize/Serializer<",
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
.method public safeCreateBooleanContentElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {p0, p4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public safeCreateContentElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0, p4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
