.class public Lcom/hp/hpl/sparta/xpath/ElementTest;
.super Lcom/hp/hpl/sparta/xpath/NodeTest;
.source ""


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/xpath/NodeTest;-><init>()V

    invoke-static {p1}, Lcom/hp/hpl/sparta/Sparta;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/hpl/sparta/xpath/ElementTest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lcom/hp/hpl/sparta/xpath/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/hp/hpl/sparta/xpath/NodeTestVisitor;->visit(Lcom/hp/hpl/sparta/xpath/ElementTest;)V

    return-void
.end method

.method public getTagName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/xpath/ElementTest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public isStringValue()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/xpath/ElementTest;->a:Ljava/lang/String;

    return-object p0
.end method
