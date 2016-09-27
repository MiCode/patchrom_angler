.class public Lcom/android/internal/app/ToolbarActionBar;
.super Landroid/app/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;,
        Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;,
        Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;,
        Lcom/android/internal/app/ToolbarActionBar$1;,
        Lcom/android/internal/app/ToolbarActionBar$2;
    }
.end annotation


# instance fields
.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private mLastMenuVisibility:Z

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbarMenuPrepared:Z

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ToolbarActionBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ToolbarActionBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return p1
.end method

.method public constructor <init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2
    .param p1, "toolbar"    # Landroid/widget/Toolbar;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "windowCallback"    # Landroid/view/Window$Callback;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ToolbarActionBar$1;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ToolbarActionBar$2;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    .line 59
    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 68
    new-instance v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;Z)V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 69
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;

    invoke-direct {v0, p0, p3}, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;-><init>(Lcom/android/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 70
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 71
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 327
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 328
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    .line 327
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 339
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 340
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    .line 339
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 346
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    .line 345
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 334
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    .line 333
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->collapseActionView()V

    .line 430
    const/4 v0, 0x1

    return v0

    .line 432
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 487
    iget-boolean v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_0

    .line 488
    return-void

    .line 490
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    .line 492
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 493
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 494
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    :cond_1
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 376
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    .line 375
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 381
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 382
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    .line 381
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedWindowCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    .line 403
    return-void
.end method

.method public invalidateOptionsMenu()Z
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 422
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 411
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/ActionBar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 322
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    .line 321
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 469
    .local v0, "menu":Landroid/view/Menu;
    if-eqz v0, :cond_0

    .line 470
    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 475
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 460
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/app/ToolbarActionBar;->openOptionsMenu()Z

    .line 463
    :cond_0
    return v1
.end method

.method public openOptionsMenu()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method populateOptionsMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 436
    iget-boolean v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    if-nez v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    new-instance v3, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;

    invoke-direct {v3, p0, v5}, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;)V

    new-instance v4, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;)V

    invoke-interface {v2, v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 438
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 441
    .local v1, "menu":Landroid/view/Menu;
    instance-of v2, v1, Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 442
    :goto_0
    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 446
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 447
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 448
    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 452
    :goto_1
    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 435
    :cond_2
    return-void

    .line 441
    :cond_3
    const/4 v0, 0x0

    .local v0, "mb":Lcom/android/internal/view/menu/MenuBuilder;
    goto :goto_0

    .line 449
    .end local v0    # "mb":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_4
    :try_start_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 451
    :catchall_0
    move-exception v2

    .line 452
    if-eqz v0, :cond_5

    .line 453
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 451
    :cond_5
    throw v2
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 364
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    .line 363
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 351
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 352
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    .line 351
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTabAt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 357
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 358
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    .line 357
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 369
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 370
    const-string/jumbo v1, "Tabs are not supported in toolbar action bars"

    .line 369
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 95
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 81
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 80
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 169
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 268
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 267
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 247
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 246
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 253
    .local v0, "currentOptions":I
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    not-int v3, p2

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 251
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 278
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 277
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 263
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 262
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 273
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 272
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 258
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 257
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 134
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 174
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 159
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 154
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 129
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    .line 99
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    new-instance v1, Lcom/android/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/android/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 194
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    .line 109
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 308
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tabs not supported in this configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationMode(I)V

    .line 307
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 206
    const-string/jumbo v1, "setSelectedNavigationIndex not valid for current navigation mode"

    .line 205
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 199
    return-void

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 179
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 124
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 119
    return-void
.end method

.method public setSubtitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 241
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    .line 396
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method
