.class public Lcom/zui/launcher3/SecondaryDisplayLauncher;
.super Landroidx/fragment/app/FragmentActivity;
.source ""

# interfaces
.implements Lcom/zui/launcher3/j;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private a:Lcom/zui/launcher3/AppListAdapter;

.field private b:Lcom/zui/launcher3/AppListAdapter;

.field private c:Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;

.field private d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher3/SecondaryDisplayLauncher;)Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->c:Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher3/SecondaryDisplayLauncher;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object p0
.end method

.method private j(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-double v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-int p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    int-to-float v3, p0

    :goto_0
    if-eqz p2, :cond_1

    int-to-float v2, p0

    :cond_1
    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private k(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->c:Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher3/SecondaryDisplayLauncher;->j(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->e:Z

    iget-object p1, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->c:Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->e:Z

    new-instance p1, Lcom/zui/launcher3/SecondaryDisplayLauncher$a;

    invoke-direct {p1, p0}, Lcom/zui/launcher3/SecondaryDisplayLauncher$a;-><init>(Lcom/zui/launcher3/SecondaryDisplayLauncher;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public synthetic c(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/zui/launcher3/SecondaryDisplayLauncher;->k(Z)V

    return-void
.end method

.method public synthetic d(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->b:Lcom/zui/launcher3/AppListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher3/AppEntry;

    invoke-virtual {p1}, Lcom/zui/launcher3/AppEntry;->d()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher3/SecondaryDisplayLauncher;->i(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic e(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->b:Lcom/zui/launcher3/AppListAdapter;

    invoke-virtual {p0, p1}, Lcom/zui/launcher3/AppListAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic f(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->a:Lcom/zui/launcher3/AppListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher3/AppEntry;

    invoke-virtual {p1}, Lcom/zui/launcher3/AppEntry;->d()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher3/SecondaryDisplayLauncher;->i(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic g(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->a:Lcom/zui/launcher3/AppListAdapter;

    invoke-virtual {p0, p1}, Lcom/zui/launcher3/AppListAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic h(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    sget p1, Lcom/zui/launcher3/R$menu;->context_menu:I

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method i(Landroid/content/Intent;)V
    .locals 2

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x1030226

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget p0, Lcom/zui/launcher3/R$string;->couldnt_launch:I

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1080027

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method

.method public onAppPicked(Lcom/zui/launcher3/AppEntry;)V
    .locals 3

    const-string v0, "pinned_apps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/zui/launcher3/AppEntry;->a()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher3/SecondaryDisplayLauncher;->k(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/launcher3/SecondaryDisplayLauncher;->k(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/zui/launcher3/R$layout;->secondary_display_launcher:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lcom/zui/launcher3/R$id;->FloatingSheet:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;

    iput-object p1, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->c:Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;

    sget p1, Lcom/zui/launcher3/R$id;->FloatingActionButton:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p1, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Lcom/zui/launcher3/g;

    invoke-direct {v0, p0}, Lcom/zui/launcher3/g;-><init>(Lcom/zui/launcher3/SecondaryDisplayLauncher;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {p1, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    new-instance v0, Lcom/zui/launcher3/AppListAdapter;

    invoke-direct {v0, p0}, Lcom/zui/launcher3/AppListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->b:Lcom/zui/launcher3/AppListAdapter;

    sget v0, Lcom/zui/launcher3/R$id;->pinned_app_grid:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->b:Lcom/zui/launcher3/AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/zui/launcher3/e;

    invoke-direct {v1, p0}, Lcom/zui/launcher3/e;-><init>(Lcom/zui/launcher3/SecondaryDisplayLauncher;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-class v0, Lcom/zui/launcher3/PinnedAppListViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher3/PinnedAppListViewModel;

    invoke-virtual {v0}, Lcom/zui/launcher3/PinnedAppListViewModel;->getPinnedAppList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher3/c;

    invoke-direct {v1, p0}, Lcom/zui/launcher3/c;-><init>(Lcom/zui/launcher3/SecondaryDisplayLauncher;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance v0, Lcom/zui/launcher3/AppListAdapter;

    invoke-direct {v0, p0}, Lcom/zui/launcher3/AppListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->a:Lcom/zui/launcher3/AppListAdapter;

    sget v0, Lcom/zui/launcher3/R$id;->app_grid:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->a:Lcom/zui/launcher3/AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/zui/launcher3/h;

    invoke-direct {v1, p0}, Lcom/zui/launcher3/h;-><init>(Lcom/zui/launcher3/SecondaryDisplayLauncher;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-class v0, Lcom/zui/launcher3/AppListViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher3/AppListViewModel;

    invoke-virtual {p1}, Lcom/zui/launcher3/AppListViewModel;->getAppList()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher3/d;

    invoke-direct {v0, p0}, Lcom/zui/launcher3/d;-><init>(Lcom/zui/launcher3/SecondaryDisplayLauncher;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget p1, Lcom/zui/launcher3/R$id;->OptionsButton:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v0, Lcom/zui/launcher3/f;

    invoke-direct {v0, p0}, Lcom/zui/launcher3/f;-><init>(Lcom/zui/launcher3/SecondaryDisplayLauncher;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/zui/launcher3/R$id;->add_app_shortcut:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher3/SecondaryDisplayLauncher;->a:Lcom/zui/launcher3/AppListAdapter;

    invoke-static {v0, p0}, Lcom/zui/launcher3/PinnedAppPickerDialog;->newInstance(Lcom/zui/launcher3/AppListAdapter;Lcom/zui/launcher3/j;)Lcom/zui/launcher3/PinnedAppPickerDialog;

    move-result-object p0

    const-string v0, "fragment_app_picker"

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v1

    :cond_0
    sget v0, Lcom/zui/launcher3/R$id;->set_wallpaper:I

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/zui/launcher3/R$string;->set_wallpaper:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/launcher3/SecondaryDisplayLauncher;->k(Z)V

    return-void
.end method
