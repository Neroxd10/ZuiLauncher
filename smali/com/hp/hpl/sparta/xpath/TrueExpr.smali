.class public Lcom/hp/hpl/sparta/xpath/TrueExpr;
.super Lcom/hp/hpl/sparta/xpath/BooleanExpr;
.source ""


# static fields
.field static final a:Lcom/hp/hpl/sparta/xpath/TrueExpr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hp/hpl/sparta/xpath/TrueExpr;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/xpath/TrueExpr;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/xpath/TrueExpr;->a:Lcom/hp/hpl/sparta/xpath/TrueExpr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/xpath/BooleanExpr;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;->visit(Lcom/hp/hpl/sparta/xpath/TrueExpr;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
