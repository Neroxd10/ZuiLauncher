.class Lcom/zui/internal/menu/a$b;
.super Lzui/util/ReflectClass;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/menu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static c:Lcom/zui/internal/menu/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/internal/menu/a$b;

    invoke-direct {v0}, Lcom/zui/internal/menu/a$b;-><init>()V

    sput-object v0, Lcom/zui/internal/menu/a$b;->c:Lcom/zui/internal/menu/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.view.ActionProvider"

    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object p0, p0, Lzui/util/ReflectClass;->mRealObject:Ljava/lang/Object;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/zui/internal/menu/a$b;->c:Lcom/zui/internal/menu/a$b;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "reset"

    invoke-virtual {p0, v3, v1, v2, v0}, Lzui/util/ReflectClass;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lcom/zui/internal/menu/a$b;->c:Lcom/zui/internal/menu/a$b;

    iput-object p1, p0, Lzui/util/ReflectClass;->mRealObject:Ljava/lang/Object;

    return-void
.end method
