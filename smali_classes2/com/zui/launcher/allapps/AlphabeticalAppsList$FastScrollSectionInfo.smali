.class public Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/AlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastScrollSectionInfo"
.end annotation


# instance fields
.field public fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

.field public sectionName:Ljava/lang/String;

.field public touchFraction:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-void
.end method
