.class public Lcom/hp/hpl/sparta/Document;
.super Lcom/hp/hpl/sparta/Node;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/hpl/sparta/Document$Observer;,
        Lcom/hp/hpl/sparta/Document$Index;
    }
.end annotation


# static fields
.field static final k:Ljava/util/Enumeration;


# instance fields
.field private g:Lcom/hp/hpl/sparta/Element;

.field private h:Ljava/lang/String;

.field private i:Lcom/hp/hpl/sparta/Sparta$Cache;

.field private j:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v0, Lcom/hp/hpl/sparta/c;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/c;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/Document;->k:Ljava/util/Enumeration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Node;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    invoke-static {}, Lcom/hp/hpl/sparta/Sparta;->a()Lcom/hp/hpl/sparta/Sparta$Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document;->i:Lcom/hp/hpl/sparta/Sparta$Cache;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document;->j:Ljava/util/Vector;

    const-string v0, "MEMORY"

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document;->h:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Node;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    invoke-static {}, Lcom/hp/hpl/sparta/Sparta;->a()Lcom/hp/hpl/sparta/Sparta$Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document;->i:Lcom/hp/hpl/sparta/Sparta$Cache;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document;->j:Ljava/util/Vector;

    iput-object p1, p0, Lcom/hp/hpl/sparta/Document;->h:Ljava/lang/String;

    return-void
.end method

.method private j(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/k;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hp/hpl/sparta/Document;->i(Lcom/hp/hpl/sparta/xpath/XPath;Z)Lcom/hp/hpl/sparta/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addObserver(Lcom/hp/hpl/sparta/Document$Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->j:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/hpl/sparta/Document$Observer;

    invoke-interface {v1, p0}, Lcom/hp/hpl/sparta/Document$Observer;->update(Lcom/hp/hpl/sparta/Document;)V

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/hp/hpl/sparta/Document;

    iget-object v1, p0, Lcom/hp/hpl/sparta/Document;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/hp/hpl/sparta/Document;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hp/hpl/sparta/Element;

    iput-object p0, v0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    return-object v0
.end method

.method protected computeHashCode()I
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->hashCode()I

    move-result p0

    return p0
.end method

.method public deleteObserver(Lcom/hp/hpl/sparta/Document$Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->j:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/hp/hpl/sparta/Document;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/hp/hpl/sparta/Document;

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    iget-object p1, p1, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Element;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDocumentElement()Lcom/hp/hpl/sparta/Element;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->h:Ljava/lang/String;

    return-object p0
.end method

.method h(Lcom/hp/hpl/sparta/xpath/XPath;)V
    .locals 0

    return-void
.end method

.method i(Lcom/hp/hpl/sparta/xpath/XPath;Z)Lcom/hp/hpl/sparta/k;
    .locals 2

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->isStringValue()Z

    move-result v0

    if-eq v0, p2, :cond_1

    if-eqz p2, :cond_0

    const-string p0, "evaluates to element not string"

    goto :goto_0

    :cond_0
    const-string p0, "evaluates to string not element"

    :goto_0
    new-instance p2, Lcom/hp/hpl/sparta/xpath/XPathException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\" evaluates to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Lcom/hp/hpl/sparta/k;

    invoke-direct {p2, p0, p1}, Lcom/hp/hpl/sparta/k;-><init>(Lcom/hp/hpl/sparta/Document;Lcom/hp/hpl/sparta/xpath/XPath;)V

    return-object p2
.end method

.method public setDocumentElement(Lcom/hp/hpl/sparta/Element;)V
    .locals 0

    iput-object p1, p0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1, p0}, Lcom/hp/hpl/sparta/Node;->f(Lcom/hp/hpl/sparta/Document;)V

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Document;->c()V

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hp/hpl/sparta/Document;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Document;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->h:Ljava/lang/String;

    return-object p0
.end method

.method public toString(Ljava/io/Writer;)V
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Element;->toString(Ljava/io/Writer;)V

    return-void
.end method

.method public toXml(Ljava/io/Writer;)V
    .locals 1

    const-string v0, "<?xml version=\"1.0\" ?>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Element;->toXml(Ljava/io/Writer;)V

    return-void
.end method

.method public xpathEnsure(Ljava/lang/String;)Z
    .locals 8

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Document;->xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/XPath;->getSteps()Ljava/util/Enumeration;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/XPath;->getSteps()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/hpl/sparta/xpath/Step;

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v5, v3, [Lcom/hp/hpl/sparta/xpath/Step;

    move v6, v1

    :goto_1
    if-lt v6, v3, :cond_4

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lcom/hp/hpl/sparta/Node;->b(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/xpath/Step;Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Document;->setDocumentElement(Lcom/hp/hpl/sparta/Element;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Document;->xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_2
    if-nez v3, :cond_2

    return v4

    :cond_2
    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    invoke-static {v1, v5}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Z[Lcom/hp/hpl/sparta/xpath/Step;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Element;->xpathEnsure(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Existing root element <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->g:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "...> does not match first step \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, "\" of \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hp/hpl/sparta/xpath/Step;

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    invoke-direct {v0, p1, p0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public xpathGetIndex(Ljava/lang/String;)Lcom/hp/hpl/sparta/Document$Index;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->i:Lcom/hp/hpl/sparta/Sparta$Cache;

    invoke-interface {v0, p1}, Lcom/hp/hpl/sparta/Sparta$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/Document$Index;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v0

    new-instance v1, Lcom/hp/hpl/sparta/Document$Index;

    invoke-direct {v1, p0, v0}, Lcom/hp/hpl/sparta/Document$Index;-><init>(Lcom/hp/hpl/sparta/Document;Lcom/hp/hpl/sparta/xpath/XPath;)V

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->i:Lcom/hp/hpl/sparta/Sparta$Cache;

    invoke-interface {p0, p1, v1}, Lcom/hp/hpl/sparta/Sparta$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/hp/hpl/sparta/ParseException;

    const-string v0, "XPath problem"

    invoke-direct {p1, v0, p0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public xpathHasIndex(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Document;->i:Lcom/hp/hpl/sparta/Sparta$Cache;

    invoke-interface {p0, p1}, Lcom/hp/hpl/sparta/Sparta$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Document;->h(Lcom/hp/hpl/sparta/xpath/XPath;)V

    invoke-virtual {p0, p1, v0}, Lcom/hp/hpl/sparta/Document;->i(Lcom/hp/hpl/sparta/xpath/XPath;Z)Lcom/hp/hpl/sparta/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/k;->e()Lcom/hp/hpl/sparta/Element;

    move-result-object p0
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/hp/hpl/sparta/ParseException;

    const-string v0, "XPath problem"

    invoke-direct {p1, v0, p0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public xpathSelectElements(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Document;->h(Lcom/hp/hpl/sparta/xpath/XPath;)V

    invoke-virtual {p0, p1, v0}, Lcom/hp/hpl/sparta/Document;->i(Lcom/hp/hpl/sparta/xpath/XPath;Z)Lcom/hp/hpl/sparta/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/k;->g()Ljava/util/Enumeration;

    move-result-object p0
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/hp/hpl/sparta/ParseException;

    const-string v0, "XPath problem"

    invoke-direct {p1, v0, p0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public xpathSelectString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Document;->j(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/k;->f()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/hp/hpl/sparta/ParseException;

    const-string v0, "XPath problem"

    invoke-direct {p1, v0, p0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public xpathSelectStrings(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Document;->j(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/k;->g()Ljava/util/Enumeration;

    move-result-object p0
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/hp/hpl/sparta/ParseException;

    const-string v0, "XPath problem"

    invoke-direct {p1, v0, p0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
