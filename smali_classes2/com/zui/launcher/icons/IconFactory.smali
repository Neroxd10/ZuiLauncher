.class public Lcom/zui/launcher/icons/IconFactory;
.super Lcom/zui/launcher/icons/BaseIconFactory;
.source ""


# static fields
.field private static final t:Ljava/lang/Object;

.field private static u:Lcom/zui/launcher/icons/IconFactory;

.field private static v:I


# instance fields
.field private final r:I

.field private s:Lcom/zui/launcher/icons/IconFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/icons/IconFactory;->t:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIIIZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIIZ)V

    iput p4, p0, Lcom/zui/launcher/icons/IconFactory;->r:I

    return-void
.end method

.method public static clearPool()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/icons/IconFactory;->t:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/zui/launcher/icons/IconFactory;->u:Lcom/zui/launcher/icons/IconFactory;

    sget v1, Lcom/zui/launcher/icons/IconFactory;->v:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/zui/launcher/icons/IconFactory;->v:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/IconFactory;
    .locals 8

    sget-object v0, Lcom/zui/launcher/icons/IconFactory;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/icons/IconFactory;->u:Lcom/zui/launcher/icons/IconFactory;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/zui/launcher/icons/IconFactory;->u:Lcom/zui/launcher/icons/IconFactory;

    iget-object v1, p0, Lcom/zui/launcher/icons/IconFactory;->s:Lcom/zui/launcher/icons/IconFactory;

    sput-object v1, Lcom/zui/launcher/icons/IconFactory;->u:Lcom/zui/launcher/icons/IconFactory;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/icons/IconFactory;->s:Lcom/zui/launcher/icons/IconFactory;

    monitor-exit v0

    return-object p0

    :cond_0
    sget v5, Lcom/zui/launcher/icons/IconFactory;->v:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/zui/launcher/icons/IconFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v3, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zui/launcher/icons/R$dimen;->default_icon_bitmap_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zui/launcher/icons/R$dimen;->default_visual_icon_bitmap_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zui/launcher/icons/R$bool;->support_change_shape:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/zui/launcher/icons/IconFactory;-><init>(Landroid/content/Context;IIIIZ)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/icons/IconFactory;->recycle()V

    return-void
.end method

.method public recycle()V
    .locals 3

    sget-object v0, Lcom/zui/launcher/icons/IconFactory;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/zui/launcher/icons/IconFactory;->v:I

    iget v2, p0, Lcom/zui/launcher/icons/IconFactory;->r:I

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->clear()V

    sget-object v1, Lcom/zui/launcher/icons/IconFactory;->u:Lcom/zui/launcher/icons/IconFactory;

    iput-object v1, p0, Lcom/zui/launcher/icons/IconFactory;->s:Lcom/zui/launcher/icons/IconFactory;

    sput-object p0, Lcom/zui/launcher/icons/IconFactory;->u:Lcom/zui/launcher/icons/IconFactory;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
