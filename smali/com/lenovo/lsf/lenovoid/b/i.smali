.class public Lcom/lenovo/lsf/lenovoid/b/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/lenovo/lsf/lenovoid/b/a;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lsf/lenovoid/b/i;->c:Z

    iput-boolean v0, p0, Lcom/lenovo/lsf/lenovoid/b/i;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/lenovo/lsf/lenovoid/b/a;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/b/i;->f:Lcom/lenovo/lsf/lenovoid/b/a;

    return-object p0
.end method

.method public a(Lcom/lenovo/lsf/lenovoid/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/b/i;->f:Lcom/lenovo/lsf/lenovoid/b/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/b/i;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/lsf/lenovoid/b/i;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/b/i;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/b/i;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/lsf/lenovoid/b/i;->c:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/b/i;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/b/i;->a:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/b/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/b/i;->b:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/b/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/lsf/lenovoid/b/i;->d:Z

    return p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/lsf/lenovoid/b/i;->c:Z

    return p0
.end method
