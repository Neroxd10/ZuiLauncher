.class public Lcom/zui/launcher/keyboard/FocusedItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/keyboard/FocusIndicatorHelper;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance v0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;

    invoke-direct {v0, p1}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/launcher/keyboard/FocusedItemDecorator;->a:Lcom/zui/launcher/keyboard/FocusIndicatorHelper;

    return-void
.end method


# virtual methods
.method public getFocusListener()Landroid/view/View$OnFocusChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/keyboard/FocusedItemDecorator;->a:Lcom/zui/launcher/keyboard/FocusIndicatorHelper;

    return-object p0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/keyboard/FocusedItemDecorator;->a:Lcom/zui/launcher/keyboard/FocusIndicatorHelper;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
