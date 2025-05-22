.class public final Lcom/amap/api/maps/model/TileOverlayOptions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/TileOverlayOptionsCreator;


# instance fields
.field private diskCacheDir:Ljava/lang/String;

.field private diskCacheEnabled:Z

.field private diskCacheSize:J

.field private mTileProvider:Lcom/amap/api/maps/model/TileProvider;

.field private final mVersionCode:I

.field private mVisible:Z

.field private mZIndex:F

.field private memCacheSize:I

.field private memoryCacheEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps/model/TileOverlayOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/TileOverlayOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/TileOverlayOptions;->CREATOR:Lcom/amap/api/maps/model/TileOverlayOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVisible:Z

    const/high16 v1, 0x500000

    iput v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize:I

    const-wide/32 v1, 0x1400000

    iput-wide v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheDir:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memoryCacheEnabled:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheEnabled:Z

    iput v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(IZF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVisible:Z

    const/high16 v1, 0x500000

    iput v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize:I

    const-wide/32 v1, 0x1400000

    iput-wide v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheDir:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memoryCacheEnabled:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheEnabled:Z

    iput p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVersionCode:I

    iput-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVisible:Z

    iput p3, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mZIndex:F

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final diskCacheDir(Ljava/lang/String;)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheDir:Ljava/lang/String;

    return-object p0
.end method

.method public final diskCacheEnabled(Z)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheEnabled:Z

    return-object p0
.end method

.method public final diskCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 2

    mul-int/lit16 p1, p1, 0x400

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize:J

    return-object p0
.end method

.method public final getDiskCacheDir()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheDir:Ljava/lang/String;

    return-object p0
.end method

.method public final getDiskCacheEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheEnabled:Z

    return p0
.end method

.method public final getDiskCacheSize()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize:J

    return-wide v0
.end method

.method public final getMemCacheSize()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize:I

    return p0
.end method

.method public final getMemoryCacheEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memoryCacheEnabled:Z

    return p0
.end method

.method public final getTileProvider()Lcom/amap/api/maps/model/TileProvider;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mTileProvider:Lcom/amap/api/maps/model/TileProvider;

    return-object p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mZIndex:F

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVisible:Z

    return p0
.end method

.method public final memCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize:I

    return-object p0
.end method

.method public final memoryCacheEnabled(Z)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memoryCacheEnabled:Z

    return-object p0
.end method

.method public final tileProvider(Lcom/amap/api/maps/model/TileProvider;)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mTileProvider:Lcom/amap/api/maps/model/TileProvider;

    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVisible:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVersionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mTileProvider:Lcom/amap/api/maps/model/TileProvider;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVisible:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mZIndex:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memoryCacheEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheEnabled:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mZIndex:F

    return-object p0
.end method
