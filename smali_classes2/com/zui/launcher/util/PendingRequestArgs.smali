.class public Lcom/zui/launcher/util/PendingRequestArgs;
.super Lcom/zui/launcher/ItemInfo;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zui/launcher/util/PendingRequestArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final f:I

.field private final g:I

.field private final h:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/PendingRequestArgs$a;

    invoke-direct {v0}, Lcom/zui/launcher/util/PendingRequestArgs$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/util/PendingRequestArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IILandroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    iput p1, p0, Lcom/zui/launcher/util/PendingRequestArgs;->f:I

    iput p2, p0, Lcom/zui/launcher/util/PendingRequestArgs;->g:I

    iput-object p3, p0, Lcom/zui/launcher/util/PendingRequestArgs;->h:Landroid/os/Parcelable;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    sget-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ItemInfo;->readFromValues(Landroid/content/ContentValues;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->g:I

    const-class v0, Lcom/zui/launcher/util/PendingRequestArgs;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/util/PendingRequestArgs;->h:Landroid/os/Parcelable;

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->f:I

    iput v0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->h:Landroid/os/Parcelable;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ItemInfo;->copyFrom(Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method public static forIntent(ILandroid/content/Intent;Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/PendingRequestArgs;
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/PendingRequestArgs;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/zui/launcher/util/PendingRequestArgs;-><init>(IILandroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Lcom/zui/launcher/ItemInfo;->copyFrom(Lcom/zui/launcher/ItemInfo;)V

    return-object v0
.end method

.method public static forLeosWidget(ILcom/zui/launcher/LenovoWidgetViewInfo;)Lcom/zui/launcher/util/PendingRequestArgs;
    .locals 4

    new-instance v0, Lcom/zui/launcher/util/PendingRequestArgs;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2, v1}, Lcom/zui/launcher/util/PendingRequestArgs;-><init>(IILandroid/os/Parcelable;)V

    invoke-virtual {v0, p1}, Lcom/zui/launcher/ItemInfo;->copyFrom(Lcom/zui/launcher/ItemInfo;)V

    return-object v0
.end method

.method public static forWidgetInfo(ILcom/zui/launcher/widget/WidgetAddFlowHandler;Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/PendingRequestArgs;
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/PendingRequestArgs;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lcom/zui/launcher/util/PendingRequestArgs;-><init>(IILandroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Lcom/zui/launcher/ItemInfo;->copyFrom(Lcom/zui/launcher/ItemInfo;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLeosComponent()Landroid/content/ComponentName;
    .locals 2

    iget v0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->h:Landroid/os/Parcelable;

    check-cast p0, Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPendingIntent()Landroid/content/Intent;
    .locals 2

    iget v0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->h:Landroid/os/Parcelable;

    check-cast p0, Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRequestCode()I
    .locals 2

    iget v0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget p0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->f:I

    :goto_1
    return p0
.end method

.method public getWidgetHandler()Lcom/zui/launcher/widget/WidgetAddFlowHandler;
    .locals 2

    iget v0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->h:Landroid/os/Parcelable;

    check-cast p0, Lcom/zui/launcher/widget/WidgetAddFlowHandler;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWidgetId()I
    .locals 2

    iget v0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->f:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Lcom/zui/launcher/util/ContentWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/zui/launcher/util/ContentWriter;-><init>(Landroid/content/ContentValues;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/ItemInfo;->writeToValues(Lcom/zui/launcher/util/ContentWriter;)V

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/zui/launcher/util/PendingRequestArgs;->h:Landroid/os/Parcelable;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
