.class public Lcom/hp/hpl/sparta/Element;
.super Lcom/hp/hpl/sparta/Node;
.source ""


# instance fields
.field private g:Lcom/hp/hpl/sparta/Node;

.field private h:Lcom/hp/hpl/sparta/Node;

.field private i:Ljava/util/Hashtable;

.field private j:Ljava/util/Vector;

.field private k:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Node;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->h:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->j:Ljava/util/Vector;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Node;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->h:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->j:Ljava/util/Vector;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/hp/hpl/sparta/Sparta;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->k:Ljava/lang/String;

    return-void
.end method

.method private j(Lcom/hp/hpl/sparta/Node;)Z
    .locals 2

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    :goto_0
    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    if-ne p1, v0, :cond_1

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    :cond_1
    iget-object p1, p0, Lcom/hp/hpl/sparta/Element;->h:Lcom/hp/hpl/sparta/Node;

    if-ne p1, v0, :cond_2

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getPreviousSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->h:Lcom/hp/hpl/sparta/Node;

    :cond_2
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->d()V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/hp/hpl/sparta/Node;->g(Lcom/hp/hpl/sparta/Element;)V

    invoke-virtual {v0, p0}, Lcom/hp/hpl/sparta/Node;->f(Lcom/hp/hpl/sparta/Document;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private k(Lcom/hp/hpl/sparta/Node;Lcom/hp/hpl/sparta/Node;)V
    .locals 3

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    :goto_0
    if-eqz v0, :cond_3

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    if-ne v0, p2, :cond_0

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->h:Lcom/hp/hpl/sparta/Node;

    if-ne v0, p2, :cond_1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->h:Lcom/hp/hpl/sparta/Node;

    :cond_1
    invoke-virtual {p2, p1}, Lcom/hp/hpl/sparta/Node;->e(Lcom/hp/hpl/sparta/Node;)V

    invoke-virtual {p1, p0}, Lcom/hp/hpl/sparta/Node;->g(Lcom/hp/hpl/sparta/Element;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/hp/hpl/sparta/Node;->g(Lcom/hp/hpl/sparta/Element;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/hp/hpl/sparta/DOMException;

    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, " in "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/hp/hpl/sparta/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method private l(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/k;
    .locals 2

    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object p1

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

    invoke-direct {p2, p0, p1}, Lcom/hp/hpl/sparta/k;-><init>(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/xpath/XPath;)V

    return-object p2
.end method


# virtual methods
.method public appendChild(Lcom/hp/hpl/sparta/Node;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Element;->i(Lcom/hp/hpl/sparta/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hp/hpl/sparta/Element;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Element;->h(Lcom/hp/hpl/sparta/Node;)V

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->c()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Element;->cloneElement(Z)Lcom/hp/hpl/sparta/Element;

    move-result-object p0

    return-object p0
.end method

.method public cloneElement(Z)Lcom/hp/hpl/sparta/Element;
    .locals 4

    new-instance v0, Lcom/hp/hpl/sparta/Element;

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/hp/hpl/sparta/Element;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->j:Ljava/util/Vector;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    :goto_2
    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hp/hpl/sparta/Node;

    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Element;->appendChild(Lcom/hp/hpl/sparta/Node;)V

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p0

    goto :goto_2

    :cond_3
    :goto_3
    return-object v0
.end method

.method public cloneShallow()Lcom/hp/hpl/sparta/Element;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Element;->cloneElement(Z)Lcom/hp/hpl/sparta/Element;

    move-result-object p0

    return-object p0
.end method

.method protected computeHashCode()I
    .locals 4

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    :goto_2
    if-nez p0, :cond_2

    return v0

    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p0

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hp/hpl/sparta/Element;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hp/hpl/sparta/Element;

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/hp/hpl/sparta/Element;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    :goto_0
    iget-object v3, p1, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p1, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    iget-object p1, p1, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    :goto_3
    if-nez p0, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    goto :goto_3
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Element;->j:Ljava/util/Vector;

    if-nez p0, :cond_0

    sget-object p0, Lcom/hp/hpl/sparta/Document;->k:Ljava/util/Enumeration;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getFirstChild()Lcom/hp/hpl/sparta/Node;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    return-object p0
.end method

.method public getLastChild()Lcom/hp/hpl/sparta/Node;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Element;->h:Lcom/hp/hpl/sparta/Node;

    return-object p0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Element;->k:Ljava/lang/String;

    return-object p0
.end method

.method h(Lcom/hp/hpl/sparta/Node;)V
    .locals 1

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->getParentNode()Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0, p1}, Lcom/hp/hpl/sparta/Element;->j(Lcom/hp/hpl/sparta/Node;)Z

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->h:Lcom/hp/hpl/sparta/Node;

    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/Node;->a(Lcom/hp/hpl/sparta/Node;)V

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    :cond_1
    invoke-virtual {p1, p0}, Lcom/hp/hpl/sparta/Node;->g(Lcom/hp/hpl/sparta/Element;)V

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->h:Lcom/hp/hpl/sparta/Node;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->getOwnerDocument()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/hp/hpl/sparta/Node;->f(Lcom/hp/hpl/sparta/Document;)V

    return-void
.end method

.method i(Lcom/hp/hpl/sparta/Node;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->getParentNode()Lcom/hp/hpl/sparta/Element;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Element;->i(Lcom/hp/hpl/sparta/Node;)Z

    move-result p0

    return p0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->c()V

    return-void
.end method

.method public removeChild(Lcom/hp/hpl/sparta/Node;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/Element;->j(Lcom/hp/hpl/sparta/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->c()V

    return-void

    :cond_0
    new-instance v0, Lcom/hp/hpl/sparta/DOMException;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/hp/hpl/sparta/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public replaceChild(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hp/hpl/sparta/Element;->k(Lcom/hp/hpl/sparta/Node;Lcom/hp/hpl/sparta/Node;)V

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->c()V

    return-void
.end method

.method public replaceChild(Lcom/hp/hpl/sparta/Text;Lcom/hp/hpl/sparta/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hp/hpl/sparta/Element;->k(Lcom/hp/hpl/sparta/Node;Lcom/hp/hpl/sparta/Node;)V

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->c()V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->j:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->c()V

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/hp/hpl/sparta/Sparta;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->c()V

    return-void
.end method

.method toString(Ljava/io/Writer;)V
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    :goto_0
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Node;->toString(Ljava/io/Writer;)V

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p0

    goto :goto_0
.end method

.method public toXml(Ljava/io/Writer;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->j:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/hp/hpl/sparta/Element;->i:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/hp/hpl/sparta/Node;->htmlEncode(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    if-nez v0, :cond_2

    const-string p0, "/>"

    :goto_2
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->g:Lcom/hp/hpl/sparta/Node;

    :goto_3
    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/hp/hpl/sparta/Element;->k:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :goto_4
    return-void

    :cond_3
    invoke-virtual {v1, p1}, Lcom/hp/hpl/sparta/Node;->toXml(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v1

    goto :goto_3
.end method

.method public xpathEnsure(Ljava/lang/String;)Z
    .locals 7

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Element;->xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

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

    if-nez v4, :cond_3

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    new-array v4, v3, [Lcom/hp/hpl/sparta/xpath/Step;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/XPath;->getSteps()Ljava/util/Enumeration;

    move-result-object v5

    :goto_1
    if-lt v1, v3, :cond_2

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/hpl/sparta/xpath/Step;

    if-nez v3, :cond_1

    move-object v0, p0

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/XPath;->isAbsolute()Z

    move-result v0

    invoke-static {v0, v4}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Z[Lcom/hp/hpl/sparta/xpath/Step;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/hp/hpl/sparta/Element;->xpathEnsure(Ljava/lang/String;)Z

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Element;->xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0, v1, p1}, Lcom/hp/hpl/sparta/Node;->b(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/xpath/Step;Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hp/hpl/sparta/Element;->h(Lcom/hp/hpl/sparta/Node;)V

    return v2

    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hp/hpl/sparta/xpath/Step;

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    invoke-direct {v0, p1, p0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Element;->l(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/k;

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
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Element;->l(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/k;

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
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Element;->l(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/k;

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
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Element;->l(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/k;

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
