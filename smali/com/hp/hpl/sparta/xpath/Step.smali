.class public Lcom/hp/hpl/sparta/xpath/Step;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static DOT:Lcom/hp/hpl/sparta/xpath/Step;


# instance fields
.field private final a:Lcom/hp/hpl/sparta/xpath/NodeTest;

.field private final b:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hp/hpl/sparta/xpath/Step;

    sget-object v1, Lcom/hp/hpl/sparta/xpath/ThisNodeTest;->a:Lcom/hp/hpl/sparta/xpath/ThisNodeTest;

    sget-object v2, Lcom/hp/hpl/sparta/xpath/TrueExpr;->a:Lcom/hp/hpl/sparta/xpath/TrueExpr;

    invoke-direct {v0, v1, v2}, Lcom/hp/hpl/sparta/xpath/Step;-><init>(Lcom/hp/hpl/sparta/xpath/NodeTest;Lcom/hp/hpl/sparta/xpath/BooleanExpr;)V

    sput-object v0, Lcom/hp/hpl/sparta/xpath/Step;->DOT:Lcom/hp/hpl/sparta/xpath/Step;

    return-void
.end method

.method constructor <init>(Lcom/hp/hpl/sparta/xpath/NodeTest;Lcom/hp/hpl/sparta/xpath/BooleanExpr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hp/hpl/sparta/xpath/Step;->a:Lcom/hp/hpl/sparta/xpath/NodeTest;

    iput-object p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->b:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hp/hpl/sparta/xpath/Step;->c:Z

    return-void
.end method

.method constructor <init>(Lcom/hp/hpl/sparta/xpath/XPath;ZLcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->c:Z

    iget p2, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    const/4 v0, -0x3

    if-eq p2, v0, :cond_5

    const/16 v1, 0x2a

    if-eq p2, v1, :cond_4

    const/16 v1, 0x2e

    if-eq p2, v1, :cond_2

    const/16 v1, 0x40

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result p2

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/hp/hpl/sparta/xpath/AttrTest;

    iget-object v0, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/hp/hpl/sparta/xpath/AttrTest;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string p2, "after @ in node test"

    const-string v0, "name"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string p2, "at begininning of step"

    const-string v0, "\'.\' or \'*\' or name"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result p2

    if-ne p2, v1, :cond_3

    sget-object p2, Lcom/hp/hpl/sparta/xpath/ParentNodeTest;->a:Lcom/hp/hpl/sparta/xpath/ParentNodeTest;

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->pushBack()V

    sget-object p2, Lcom/hp/hpl/sparta/xpath/ThisNodeTest;->a:Lcom/hp/hpl/sparta/xpath/ThisNodeTest;

    goto :goto_0

    :cond_4
    sget-object p2, Lcom/hp/hpl/sparta/xpath/AllElementTest;->a:Lcom/hp/hpl/sparta/xpath/AllElementTest;

    :goto_0
    iput-object p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->a:Lcom/hp/hpl/sparta/xpath/NodeTest;

    goto :goto_1

    :cond_5
    iget-object p2, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result p2

    const/16 v0, 0x28

    if-ne p2, v0, :cond_6

    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result p2

    const/16 v0, 0x29

    if-ne p2, v0, :cond_6

    sget-object p2, Lcom/hp/hpl/sparta/xpath/TextTest;->a:Lcom/hp/hpl/sparta/xpath/TextTest;

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string p2, "after text"

    const-string v0, "()"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p2, Lcom/hp/hpl/sparta/xpath/ElementTest;

    iget-object v0, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/hp/hpl/sparta/xpath/ElementTest;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result p2

    const/16 v0, 0x5b

    if-ne p2, v0, :cond_9

    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    invoke-static {p1, p3}, Lcom/hp/hpl/sparta/xpath/ExprFactory;->a(Lcom/hp/hpl/sparta/xpath/XPath;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;)Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    move-result-object p2

    iput-object p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->b:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    iget p0, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    const/16 p2, 0x5d

    if-ne p0, p2, :cond_8

    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    goto :goto_2

    :cond_8
    new-instance p0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string p2, "after predicate expression"

    const-string v0, "]"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw p0

    :cond_9
    sget-object p1, Lcom/hp/hpl/sparta/xpath/TrueExpr;->a:Lcom/hp/hpl/sparta/xpath/TrueExpr;

    iput-object p1, p0, Lcom/hp/hpl/sparta/xpath/Step;->b:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    :goto_2
    return-void
.end method


# virtual methods
.method public getNodeTest()Lcom/hp/hpl/sparta/xpath/NodeTest;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/xpath/Step;->a:Lcom/hp/hpl/sparta/xpath/NodeTest;

    return-object p0
.end method

.method public getPredicate()Lcom/hp/hpl/sparta/xpath/BooleanExpr;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/xpath/Step;->b:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    return-object p0
.end method

.method public isMultiLevel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hp/hpl/sparta/xpath/Step;->c:Z

    return p0
.end method

.method public isStringValue()Z
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/xpath/Step;->a:Lcom/hp/hpl/sparta/xpath/NodeTest;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/xpath/NodeTest;->isStringValue()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/Step;->a:Lcom/hp/hpl/sparta/xpath/NodeTest;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/hp/hpl/sparta/xpath/Step;->b:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
