.class Lcom/hp/hpl/sparta/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/hp/hpl/sparta/ParseSource;
.implements Lcom/hp/hpl/sparta/ParseHandler;


# instance fields
.field private a:Lcom/hp/hpl/sparta/Element;

.field private final b:Lcom/hp/hpl/sparta/Document;

.field private c:Lcom/hp/hpl/sparta/ParseSource;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/a;-><init>(Lcom/hp/hpl/sparta/ParseLog;)V

    return-void
.end method

.method public constructor <init>(Lcom/hp/hpl/sparta/ParseLog;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/a;->a:Lcom/hp/hpl/sparta/Element;

    new-instance v1, Lcom/hp/hpl/sparta/Document;

    invoke-direct {v1}, Lcom/hp/hpl/sparta/Document;-><init>()V

    iput-object v1, p0, Lcom/hp/hpl/sparta/a;->b:Lcom/hp/hpl/sparta/Document;

    iput-object v0, p0, Lcom/hp/hpl/sparta/a;->c:Lcom/hp/hpl/sparta/ParseSource;

    return-void
.end method


# virtual methods
.method public a()Lcom/hp/hpl/sparta/Document;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/a;->b:Lcom/hp/hpl/sparta/Document;

    return-object p0
.end method

.method public characters([CII)V
    .locals 2

    iget-object p0, p0, Lcom/hp/hpl/sparta/a;->a:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->getLastChild()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/hp/hpl/sparta/Text;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->getLastChild()Lcom/hp/hpl/sparta/Node;

    move-result-object p0

    check-cast p0, Lcom/hp/hpl/sparta/Text;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hp/hpl/sparta/Text;->appendData([CII)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hp/hpl/sparta/Text;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Lcom/hp/hpl/sparta/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Element;->h(Lcom/hp/hpl/sparta/Node;)V

    :goto_0
    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Lcom/hp/hpl/sparta/Element;)V
    .locals 0

    iget-object p1, p0, Lcom/hp/hpl/sparta/a;->a:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->getParentNode()Lcom/hp/hpl/sparta/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/hpl/sparta/a;->a:Lcom/hp/hpl/sparta/Element;

    return-void
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/a;->c:Lcom/hp/hpl/sparta/ParseSource;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hp/hpl/sparta/ParseSource;->getLineNumber()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getParseSource()Lcom/hp/hpl/sparta/ParseSource;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/a;->c:Lcom/hp/hpl/sparta/ParseSource;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/a;->c:Lcom/hp/hpl/sparta/ParseSource;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hp/hpl/sparta/ParseSource;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setParseSource(Lcom/hp/hpl/sparta/ParseSource;)V
    .locals 0

    iput-object p1, p0, Lcom/hp/hpl/sparta/a;->c:Lcom/hp/hpl/sparta/ParseSource;

    iget-object p0, p0, Lcom/hp/hpl/sparta/a;->b:Lcom/hp/hpl/sparta/Document;

    invoke-interface {p1}, Lcom/hp/hpl/sparta/ParseSource;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Document;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Lcom/hp/hpl/sparta/Element;)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/a;->a:Lcom/hp/hpl/sparta/Element;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/a;->b:Lcom/hp/hpl/sparta/Document;

    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Document;->setDocumentElement(Lcom/hp/hpl/sparta/Element;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Element;->appendChild(Lcom/hp/hpl/sparta/Node;)V

    :goto_0
    iput-object p1, p0, Lcom/hp/hpl/sparta/a;->a:Lcom/hp/hpl/sparta/Element;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hp/hpl/sparta/a;->c:Lcom/hp/hpl/sparta/ParseSource;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BuildDoc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/hp/hpl/sparta/a;->c:Lcom/hp/hpl/sparta/ParseSource;

    invoke-interface {p0}, Lcom/hp/hpl/sparta/ParseSource;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
