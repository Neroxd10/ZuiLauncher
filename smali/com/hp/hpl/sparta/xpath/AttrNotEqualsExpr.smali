.class public Lcom/hp/hpl/sparta/xpath/AttrNotEqualsExpr;
.super Lcom/hp/hpl/sparta/xpath/AttrCompareExpr;
.source ""


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hp/hpl/sparta/xpath/AttrCompareExpr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;->visit(Lcom/hp/hpl/sparta/xpath/AttrNotEqualsExpr;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "!="

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/xpath/AttrCompareExpr;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
