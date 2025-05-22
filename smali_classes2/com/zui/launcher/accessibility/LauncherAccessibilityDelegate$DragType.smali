.class public final enum Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DragType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FOLDER:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

.field public static final enum ICON:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

.field public static final enum WIDGET:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

.field private static final synthetic a:[Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    const-string v1, "ICON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->ICON:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    new-instance v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    const-string v1, "FOLDER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    new-instance v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    const-string v1, "WIDGET"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v5, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->ICON:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->a:[Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;
    .locals 1

    const-class v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    return-object p0
.end method

.method public static values()[Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;
    .locals 1

    sget-object v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->a:[Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    invoke-virtual {v0}, [Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    return-object v0
.end method
