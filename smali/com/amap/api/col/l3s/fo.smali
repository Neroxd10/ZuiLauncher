.class public final Lcom/amap/api/col/l3s/fo;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/fo$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3s/fp;

.field b:Lcom/amap/api/col/l3s/ay;

.field private c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private d:Landroid/content/Context;

.field private e:Lcom/amap/api/col/l3s/fr;

.field private f:Lcom/amap/api/col/l3s/fn;

.field private g:Lcom/amap/api/col/l3s/fl;

.field private h:Lcom/amap/api/col/l3s/fq;

.field private i:Lcom/amap/api/col/l3s/fk;

.field private j:Lcom/amap/api/col/l3s/fm;

.field private k:Lcom/amap/api/col/l3s/fs;

.field private l:Landroid/view/View;

.field private m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Z

.field private p:Landroid/view/View;

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/fo;->n:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fo;->o:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fo;->r:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fo;->s:Z

    :try_start_0
    iput-object p2, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iput-object p1, p0, Lcom/amap/api/col/l3s/fo;->d:Landroid/content/Context;

    new-instance p2, Lcom/amap/api/col/l3s/fp;

    invoke-direct {p2}, Lcom/amap/api/col/l3s/fp;-><init>()V

    iput-object p2, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    new-instance p2, Lcom/amap/api/col/l3s/fk;

    invoke-direct {p2, p1}, Lcom/amap/api/col/l3s/fk;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/fo;->i:Lcom/amap/api/col/l3s/fk;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->i:Lcom/amap/api/col/l3s/fk;

    invoke-virtual {p0, v1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p2, p0, Lcom/amap/api/col/l3s/fo;->r:Z

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/fo;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)Landroid/view/View;
    .locals 7

    instance-of v0, p1, Lcom/amap/api/col/l3s/db;

    const/4 v1, 0x0

    const-string v2, "getInfoWindow or getInfoContents"

    const-string v3, "infowindow_bg.9.png"

    const-string v4, "showInfoWindow decodeDrawableFromAsset"

    const/4 v5, 0x0

    const-string v6, "MapOverlayViewGroup"

    if-eqz v0, :cond_5

    new-instance v0, Lcom/amap/api/maps/model/Marker;

    check-cast p1, Lcom/amap/api/col/l3s/db;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/fo;->n:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/fo;->d:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/amap/api/col/l3s/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/fo;->n:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1, v6, v4}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/fo;->q:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez p1, :cond_1

    :try_start_2
    iget-object v3, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v3, v0}, Lcom/amap/api/col/l3s/ay;->b(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/amap/api/col/l3s/fo;->p:Landroid/view/View;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/fo;->q:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/fo;->p:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_1
    if-nez p1, :cond_4

    :try_start_4
    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ay;->a()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v5

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    move-object v5, p1

    if-eqz v5, :cond_c

    :try_start_5
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_c

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->n:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->d:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/amap/api/col/l3s/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/fo;->n:Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {v0, v6, v4}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_2
    :try_start_7
    new-instance v0, Lcom/amap/api/maps/model/GL3DModel;

    check-cast p1, Lcom/amap/api/col/l3s/cy;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/GL3DModel;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IglModel;)V

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/fo;->q:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez p1, :cond_7

    :try_start_8
    iget-object v3, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v3, v0}, Lcom/amap/api/col/l3s/ay;->b(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1

    :cond_7
    iput-object p1, p0, Lcom/amap/api/col/l3s/fo;->p:Landroid/view/View;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/fo;->q:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :cond_8
    :try_start_9
    iget-object p1, p0, Lcom/amap/api/col/l3s/fo;->p:Landroid/view/View;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_3
    if-nez p1, :cond_a

    :try_start_a
    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ay;->a()Z

    move-result v1

    if-nez v1, :cond_9

    return-object v5

    :cond_9
    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v5, p1

    goto :goto_5

    :cond_a
    :goto_4
    move-object v5, p1

    :try_start_b
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_b

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_b
    return-object v5

    :catchall_3
    move-exception p0

    :goto_5
    invoke-static {p0, v6, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_6
    return-object v5
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/fo;)Lcom/amap/api/col/l3s/fq;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->h:Lcom/amap/api/col/l3s/fq;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    new-instance v0, Lcom/amap/api/col/l3s/fr;

    invoke-direct {v0, p1}, Lcom/amap/api/col/l3s/fr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/fo;->s:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/fr;->c(Z)V

    new-instance v0, Lcom/amap/api/col/l3s/fq;

    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/col/l3s/fq;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fo;->h:Lcom/amap/api/col/l3s/fq;

    new-instance v0, Lcom/amap/api/col/l3s/fm;

    invoke-direct {v0, p1}, Lcom/amap/api/col/l3s/fm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fo;->j:Lcom/amap/api/col/l3s/fm;

    new-instance v0, Lcom/amap/api/col/l3s/fs;

    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/col/l3s/fs;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fo;->k:Lcom/amap/api/col/l3s/fs;

    new-instance v0, Lcom/amap/api/col/l3s/fn;

    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/col/l3s/fn;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fo;->f:Lcom/amap/api/col/l3s/fn;

    new-instance v0, Lcom/amap/api/col/l3s/fl;

    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/col/l3s/fl;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fo;->g:Lcom/amap/api/col/l3s/fl;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->h:Lcom/amap/api/col/l3s/fq;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->j:Lcom/amap/api/col/l3s/fm;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/amap/api/col/l3s/fo$a;

    new-instance v4, Lcom/autonavi/base/amap/mapcore/FPoint;

    const/4 v0, 0x0

    invoke-direct {v4, v0, v0}, Lcom/autonavi/base/amap/mapcore/FPoint;-><init>(FF)V

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x53

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/col/l3s/fo$a;-><init>(IILcom/autonavi/base/amap/mapcore/FPoint;III)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->k:Lcom/amap/api/col/l3s/fs;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/amap/api/col/l3s/fo$a;

    invoke-static {v0, v0}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v5

    const/4 v4, -0x2

    const/4 v7, 0x0

    const/16 v8, 0x53

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/amap/api/col/l3s/fo$a;-><init>(IILcom/autonavi/base/amap/mapcore/FPoint;III)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->f:Lcom/amap/api/col/l3s/fn;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/amap/api/col/l3s/fo$a;

    invoke-static {v0, v0}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v5

    const/16 v8, 0x33

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/amap/api/col/l3s/fo$a;-><init>(IILcom/autonavi/base/amap/mapcore/FPoint;III)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->g:Lcom/amap/api/col/l3s/fl;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fo;->g:Lcom/amap/api/col/l3s/fl;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance p1, Lcom/amap/api/col/l3s/fo$1;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/fo$1;-><init>(Lcom/amap/api/col/l3s/fo;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setMapWidgetListener(Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;)V

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isMyLocationButtonEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->f:Lcom/amap/api/col/l3s/fn;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AMapDelegateImpGLSurfaceView"

    const-string v0, "locationView gone"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 2

    and-int/lit8 v0, p6, 0x7

    and-int/lit8 p6, p6, 0x70

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sub-int/2addr p4, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p4, v0

    :cond_1
    :goto_0
    const/16 v0, 0x50

    if-ne p6, v0, :cond_2

    sub-int/2addr p5, p3

    goto :goto_2

    :cond_2
    const/16 v0, 0x11

    if-ne p6, v0, :cond_3

    :goto_1
    div-int/lit8 p6, p3, 0x2

    sub-int/2addr p5, p6

    goto :goto_2

    :cond_3
    const/16 v0, 0x10

    if-ne p6, v0, :cond_4

    div-int/lit8 p5, p5, 0x2

    goto :goto_1

    :cond_4
    :goto_2
    add-int p6, p4, p2

    add-int v0, p5, p3

    invoke-virtual {p1, p4, p5, p6, v0}, Landroid/view/View;->layout(IIII)V

    instance-of p1, p1, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, p2, p3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeSize(II)V

    :cond_5
    return-void
.end method

.method private a(Landroid/view/View;II[I)V
    .locals 4

    instance-of v0, p1, Landroid/widget/ListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    aput v3, p4, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, p4, v1

    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->measure(II)V

    :cond_2
    const/4 v0, -0x1

    const/4 v3, -0x2

    if-ne p2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    aput p2, p4, v2

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    aput p2, p4, v2

    goto :goto_0

    :cond_4
    aput p2, p4, v2

    :goto_0
    if-ne p3, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    aput p0, p4, v1

    return-void

    :cond_5
    if-ne p3, v0, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    aput p0, p4, v1

    return-void

    :cond_6
    aput p3, p4, v1

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/fo;)Lcom/amap/api/col/l3s/fl;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->g:Lcom/amap/api/col/l3s/fl;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/fo;)Lcom/amap/api/col/l3s/fs;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->k:Lcom/amap/api/col/l3s/fs;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/fo;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/fo;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->n:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/fo;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->h:Lcom/amap/api/col/l3s/fq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->h:Lcom/amap/api/col/l3s/fq;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/fo;->j()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fr;->d(I)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fr;->b()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float v1, v1

    int-to-float p0, p0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/fm$a;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->j:Lcom/amap/api/col/l3s/fm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/fm;->a(Lcom/amap/api/col/l3s/fm$a;)V

    return-void
.end method

.method public final a(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isLogoEnable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iget-object p1, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3s/eq;->a(DD)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMaskLayerType()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->j:Lcom/amap/api/col/l3s/fm;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->canShowIndoorSwitch()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->j:Lcom/amap/api/col/l3s/fm;

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/fm;->a(Z)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/Float;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->k:Lcom/amap/api/col/l3s/fs;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/fs;->a(F)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->k:Lcom/amap/api/col/l3s/fs;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :try_start_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3s/fo$a;

    if-ne p0, v1, :cond_1

    const/16 p0, 0x10

    iput p0, p1, Lcom/amap/api/col/l3s/fo$a;->e:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    const/16 p0, 0x50

    iput p0, p1, Lcom/amap/api/col/l3s/fo$a;->e:I

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ZoomControllerView"

    const-string v0, "setZoomPosition"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Float;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/l3s/fr;->a(IF)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/fo;->j()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    aput-object p3, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fr;->b(Z)V

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p1, p3}, Lcom/amap/api/col/l3s/fr;->a(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fr;->d(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/fr;->c(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/fo;->s:Z

    return-void
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->k:Lcom/amap/api/col/l3s/fs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final b(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/fr;->a(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/fo;->j()V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fr;->d()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/fr;->c()V

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->f:Lcom/amap/api/col/l3s/fn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->f:Lcom/amap/api/col/l3s/fn;

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final c(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/fr;->b(I)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/fo;->j()V

    :cond_1
    return-void
.end method

.method public final d()Lcom/amap/api/col/l3s/fk;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->i:Lcom/amap/api/col/l3s/fk;

    return-object p0
.end method

.method public final d(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->g:Lcom/amap/api/col/l3s/fl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/fl;->a()V

    return-void

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final d(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/fr;->c(I)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/fo;->j()V

    :cond_1
    return-void
.end method

.method public final e()Lcom/amap/api/col/l3s/fm;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->j:Lcom/amap/api/col/l3s/fm;

    return-object p0
.end method

.method public final e(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->h:Lcom/amap/api/col/l3s/fq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/fq;->c()V

    return-void

    :cond_1
    const-string p0, ""

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/fq;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/fq;->b()V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final f()Lcom/amap/api/col/l3s/fr;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    return-object p0
.end method

.method public final f(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final g()V
    .locals 4

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fo;->hideInfoWindow()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->n:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->k:Lcom/amap/api/col/l3s/fs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/fs;->a()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->h:Lcom/amap/api/col/l3s/fq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/fq;->a()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/fr;->a()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->f:Lcom/amap/api/col/l3s/fn;

    const-string v1, "destroy"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    :try_start_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v3, v0, Lcom/amap/api/col/l3s/fn;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/amap/api/col/l3s/fn;->a:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v3, v0, Lcom/amap/api/col/l3s/fn;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/amap/api/col/l3s/fn;->b:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v3, v0, Lcom/amap/api/col/l3s/fn;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/amap/api/col/l3s/fn;->c:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    :cond_5
    iput-object v2, v0, Lcom/amap/api/col/l3s/fn;->a:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/amap/api/col/l3s/fn;->b:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/amap/api/col/l3s/fn;->c:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/amap/api/col/l3s/fn;->d:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/amap/api/col/l3s/fn;->d:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lcom/amap/api/col/l3s/fn;->d:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v3, v0, Lcom/amap/api/col/l3s/fn;->e:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/amap/api/col/l3s/fn;->e:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lcom/amap/api/col/l3s/fn;->e:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v3, v0, Lcom/amap/api/col/l3s/fn;->f:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/amap/api/col/l3s/fn;->f:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lcom/amap/api/col/l3s/fn;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v3, "LocationView"

    invoke-static {v0, v3, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->g:Lcom/amap/api/col/l3s/fl;

    if-eqz v0, :cond_d

    :try_start_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v3, v0, Lcom/amap/api/col/l3s/fl;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/amap/api/col/l3s/fl;->a:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    :cond_9
    iget-object v3, v0, Lcom/amap/api/col/l3s/fl;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/amap/api/col/l3s/fl;->b:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    :cond_a
    iget-object v3, v0, Lcom/amap/api/col/l3s/fl;->c:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/amap/api/col/l3s/fl;->c:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    :cond_b
    iget-object v3, v0, Lcom/amap/api/col/l3s/fl;->f:Landroid/graphics/Matrix;

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/amap/api/col/l3s/fl;->f:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iput-object v2, v0, Lcom/amap/api/col/l3s/fl;->f:Landroid/graphics/Matrix;

    :cond_c
    iput-object v2, v0, Lcom/amap/api/col/l3s/fl;->c:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/amap/api/col/l3s/fl;->a:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/amap/api/col/l3s/fl;->b:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v3, "CompassView"

    invoke-static {v0, v3, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->j:Lcom/amap/api/col/l3s/fm;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/fm;->a()V

    :cond_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/fo;->p:Landroid/view/View;

    return-void
.end method

.method public final g(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/fr;->a(Z)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/fr;->a(Z)V

    :cond_2
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->g:Lcom/amap/api/col/l3s/fl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/col/l3s/fl;->a()V

    return-void
.end method

.method public final h(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->f:Lcom/amap/api/col/l3s/fn;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/amap/api/col/l3s/fn;->i:Z

    if-eqz p0, :cond_1

    :try_start_0
    iget-object p0, v0, Lcom/amap/api/col/l3s/fn;->g:Landroid/widget/ImageView;

    iget-object p1, v0, Lcom/amap/api/col/l3s/fn;->a:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lcom/amap/api/col/l3s/fn;->g:Landroid/widget/ImageView;

    iget-object p1, v0, Lcom/amap/api/col/l3s/fn;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    :goto_1
    iget-object p0, v0, Lcom/amap/api/col/l3s/fn;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "LocationView"

    const-string v0, "showSelect"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final hideInfoWindow()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/fo$2;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/fo$2;-><init>(Lcom/amap/api/col/l3s/fo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->setInfoWindowShown(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fo;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/fo;->a(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fp;->a()V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->j:Lcom/amap/api/col/l3s/fm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/fm;->a(Z)V

    return-void
.end method

.method public final isInfoWindowShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->a:Lcom/amap/api/col/l3s/fp;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/col/l3s/fp;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onInfoWindowTap(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-direct {v2, v0, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v2, p0, p1}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Rect;II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_8

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, Lcom/amap/api/col/l3s/fo$a;

    const/4 p5, 0x2

    const/4 v0, 0x1

    if-eqz p4, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/amap/api/col/l3s/fo$a;

    new-array p5, p5, [I

    iget v2, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v2, v3, p5}, Lcom/amap/api/col/l3s/fo;->a(Landroid/view/View;II[I)V

    instance-of v2, v1, Lcom/amap/api/col/l3s/fs;

    if-eqz v2, :cond_0

    aget v2, p5, p2

    aget v3, p5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    aget p5, p5, p2

    sub-int v4, v0, p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iget v6, p4, Lcom/amap/api/col/l3s/fo$a;->e:I

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/l3s/fo;->a(Landroid/view/View;IIIII)V

    goto/16 :goto_3

    :cond_0
    instance-of v2, v1, Lcom/amap/api/col/l3s/fn;

    if-eqz v2, :cond_1

    aget v2, p5, p2

    aget v3, p5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    aget v5, p5, p2

    sub-int/2addr v4, v5

    aget v5, p5, v0

    iget v6, p4, Lcom/amap/api/col/l3s/fo$a;->e:I

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lcom/amap/api/col/l3s/fl;

    if-eqz v2, :cond_2

    aget v2, p5, p2

    aget v3, p5, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p4, Lcom/amap/api/col/l3s/fo$a;->e:I

    goto :goto_1

    :cond_2
    iget-object v2, p4, Lcom/amap/api/col/l3s/fo$a;->a:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v7

    iget-object v2, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v3

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    iget-boolean v4, p4, Lcom/amap/api/col/l3s/fo$a;->b:Z

    if-eqz v4, :cond_3

    iget-object v3, p4, Lcom/amap/api/col/l3s/fo$a;->a:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p4, Lcom/amap/api/col/l3s/fo$a;->a:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_3
    iget-object v4, p4, Lcom/amap/api/col/l3s/fo$a;->a:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget-object v5, p4, Lcom/amap/api/col/l3s/fo$a;->a:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    :goto_2
    iget v3, v2, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iput v3, v7, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    iput v3, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    :cond_4
    iget v2, v7, Landroid/graphics/Point;->x:I

    iget v3, p4, Lcom/amap/api/col/l3s/fo$a;->c:I

    add-int v4, v2, v3

    iput v4, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    iget v3, p4, Lcom/amap/api/col/l3s/fo$a;->d:I

    add-int v5, v2, v3

    iput v5, v7, Landroid/graphics/Point;->y:I

    aget v2, p5, p2

    aget v3, p5, v0

    iget v6, p4, Lcom/amap/api/col/l3s/fo$a;->e:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/l3s/fo;->a(Landroid/view/View;IIIII)V

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    new-array p5, p5, [I

    iget v2, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v2, p4, p5}, Lcom/amap/api/col/l3s/fo;->a(Landroid/view/View;II[I)V

    instance-of p4, v1, Lcom/amap/api/col/l3s/fm;

    if-eqz p4, :cond_6

    aget v2, p5, p2

    aget v3, p5, v0

    const/16 v4, 0x14

    iget-object p4, p0, Lcom/amap/api/col/l3s/fo;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getWaterMarkerPositon()Landroid/graphics/Point;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Point;->y:I

    add-int/lit8 p4, p4, -0x50

    aget p5, p5, v0

    sub-int v5, p4, p5

    const/16 v6, 0x33

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/l3s/fo;->a(Landroid/view/View;IIIII)V

    goto :goto_3

    :cond_6
    aget v2, p5, p2

    aget v3, p5, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x33

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/l3s/fo;->a(Landroid/view/View;IIIII)V

    :cond_7
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->e:Lcom/amap/api/col/l3s/fr;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fr;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final redrawInfoWindow()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    const/16 v1, 0x8

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->checkInBounds()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fo;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealInfoWindowOffsetX()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getInfoWindowOffsetX()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealInfoWindowOffsetY()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getInfoWindowOffsetY()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-direct {p0, v3}, Lcom/amap/api/col/l3s/fo;->a(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fo;->hideInfoWindow()V

    :cond_1
    return-void

    :cond_2
    const/4 v10, 0x0

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    if-eq v3, v4, :cond_5

    iget-object v4, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    iget-object v4, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iput-object v3, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v4, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setDrawingCacheQuality(I)V

    iget-object v4, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRect()Landroid/graphics/Rect;

    const/4 v4, -0x2

    if-eqz v3, :cond_4

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v5, v3

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    new-instance v11, Lcom/amap/api/col/l3s/fo$a;

    iget-object v3, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v6

    const/16 v9, 0x51

    move-object v3, v11

    move v7, v0

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/col/l3s/fo$a;-><init>(IILcom/autonavi/base/amap/mapcore/FPoint;III)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {p0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v3, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/fo$a;

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->isViewMode()Z

    move-result v4

    iput-boolean v4, v3, Lcom/amap/api/col/l3s/fo$a;->b:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getScreenPosition()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getScreenPosition()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v4

    :goto_1
    iput-object v4, v3, Lcom/amap/api/col/l3s/fo$a;->a:Lcom/autonavi/base/amap/mapcore/FPoint;

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v4

    goto :goto_1

    :goto_2
    iput v0, v3, Lcom/amap/api/col/l3s/fo$a;->c:I

    iput v2, v3, Lcom/amap/api/col/l3s/fo$a;->d:I

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/col/l3s/fo;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ay;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    iget-object v2, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/col/l3s/ay;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {p0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo;->l:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "MapOverlayViewGroup"

    const-string v1, "redrawInfoWindow"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setInfoWindowAdapterManager(Lcom/amap/api/col/l3s/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    return-void
.end method

.method public final showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ay;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->isInfoWindowEnable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fo;->hideInfoWindow()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo;->b:Lcom/amap/api/col/l3s/ay;

    if-eqz v0, :cond_4

    iput-object p1, p0, Lcom/amap/api/col/l3s/fo;->m:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->setInfoWindowShown(Z)V

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fo;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method
