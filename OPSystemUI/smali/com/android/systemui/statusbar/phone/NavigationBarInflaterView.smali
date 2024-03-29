.class public Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarInflaterView.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;",
        ">;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;"
    }
.end annotation


# instance fields
.field public NAVBAR_CONFIG:Ljava/lang/String;

.field public NAVBAR_CONFIG_RTL:Ljava/lang/String;

.field public NAVBAR_SWIPE_UP_CONFIG:Ljava/lang/String;

.field public NAVBAR_SWIPE_UP_CONFIG_RTL:Ljava/lang/String;

.field private isRot0Landscape:Z

.field private mAlternativeOrder:Z

.field private mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLayout:Ljava/lang/String;

.field private final mDisplay:Landroid/view/Display;

.field private mIsCameraNotch:Z

.field private mIsCustomNavBar:Z

.field private mIsSupportHideNavBar:Z

.field protected mLandscapeInflater:Landroid/view/LayoutInflater;

.field private mLastLandscape:Landroid/view/View;

.field private mLastPortrait:Landroid/view/View;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

.field private final mPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected mRot0:Landroid/widget/FrameLayout;

.field protected mRot90:Landroid/widget/FrameLayout;

.field private mUsingCustomLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mPlugins:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsSupportHideNavBar:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCameraNotch:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->createInflaters()V

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    const/4 v4, 0x1

    if-le v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    const-class v2, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/OverviewProxyService;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setLayoutDirection(I)V

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportHideNavBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsSupportHideNavBar:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCameraNotch:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsSupportHideNavBar:Z

    if-eqz v0, :cond_1

    const v0, 0x7f11042c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_CONFIG:Ljava/lang/String;

    const v0, 0x7f11042f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_CONFIG_RTL:Ljava/lang/String;

    const v0, 0x7f11042d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_SWIPE_UP_CONFIG:Ljava/lang/String;

    const v0, 0x7f11042e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_SWIPE_UP_CONFIG_RTL:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const v0, 0x7f1101e3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_CONFIG:Ljava/lang/String;

    const v0, 0x7f1101e6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_CONFIG_RTL:Ljava/lang/String;

    const v0, 0x7f1101e4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_SWIPE_UP_CONFIG:Ljava/lang/String;

    const v0, 0x7f1101e5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_SWIPE_UP_CONFIG_RTL:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addGravitySpacer(Landroid/widget/LinearLayout;)V
    .locals 4

    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addToDispatchers(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;
    .locals 8

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    new-instance v3, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    const/16 v5, 0x30

    goto :goto_0

    :cond_1
    const/16 v5, 0x50

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    const v5, 0x800003

    goto :goto_0

    :cond_3
    const v5, 0x800005

    :goto_0
    const-string v6, "WC"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v5, 0x11

    :cond_4
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setDefaultGravity(I)V

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setGravity(I)V

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v2, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setClipChildren(Z)V

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setClipToPadding(Z)V

    return-object v3

    :cond_5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-object p1
.end method

.method private clearAllChildren(Landroid/view/ViewGroup;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearViews()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v1, 0x7f0a027c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private createInflaters()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const/4 v1, 0x2

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "left"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "sysui_nav_bar_left"

    const-string v4, "space"

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "right"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "sysui_nav_bar_right"

    const-string v4, "menu_ime"

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mPlugins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;->createView(Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    goto :goto_1

    :cond_3
    const-string v2, "home"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-eqz v2, :cond_4

    const v2, 0x7f0d0075

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_4
    const v2, 0x7f0d0074

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_2
    move-object v0, v2

    goto/16 :goto_7

    :cond_5
    const-string v2, "back"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-eqz v2, :cond_6

    const v2, 0x7f0d002f

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    :cond_6
    const v2, 0x7f0d002e

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_3
    move-object v0, v2

    goto/16 :goto_7

    :cond_7
    const-string v2, "recent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-eqz v2, :cond_8

    const v2, 0x7f0d01a3

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_4

    :cond_8
    const v2, 0x7f0d01a2

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_4
    move-object v0, v2

    goto/16 :goto_7

    :cond_9
    const-string v2, "menu_ime"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-eqz v2, :cond_a

    const v2, 0x7f0d00d5

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_5

    :cond_a
    const v2, 0x7f0d00d4

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_5
    move-object v0, v2

    goto/16 :goto_7

    :cond_b
    const-string v2, "space"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const v2, 0x7f0d00e2

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0x3a

    aput v5, v4, v3

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070393

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_6

    :cond_c
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070392

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_d
    :goto_6
    goto/16 :goto_7

    :cond_e
    const-string v2, "clipboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const v2, 0x7f0d0051

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_7

    :cond_f
    const-string v2, "contextual"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const v2, 0x7f0d0053

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    :cond_10
    const-string v2, "nav"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const v2, 0x7f0d00df

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    :cond_11
    const-string v2, "key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f0d0054

    invoke-virtual {p3, v5, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setCode(I)V

    if-eqz v2, :cond_13

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->loadAsync(Landroid/graphics/drawable/Icon;)V

    goto :goto_7

    :cond_12
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v3, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->loadAsync(Landroid/graphics/drawable/Icon;)V

    :cond_13
    :goto_7
    return-object v0
.end method

.method public static extractButton(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static extractKeycode(Ljava/lang/String;)I
    .locals 3

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static extractSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private inflateChildren()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d00ea

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v2, 0x7f0a035e

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCameraNotch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0704ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0704e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d00eb

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    const v4, 0x7f0a035f

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder()V

    return-void
.end method

.method private initiallyFill(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0131

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v2, 0x7f0a00b1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private updateAlternativeOrder()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0131

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v2, 0x7f0a00b1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    return-void
.end method

.method private updateAlternativeOrder(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->setAlternativeOrder(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getDefaultLayout()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/OPUtils;->isBackKeyRight(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v3}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_SWIPE_UP_CONFIG:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_CONFIG:Ljava/lang/String;

    :goto_0
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_SWIPE_UP_CONFIG_RTL:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_CONFIG_RTL:Ljava/lang/String;

    :goto_1
    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    return-object v5

    :cond_2
    return-object v4

    :cond_3
    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    return-object v5

    :cond_4
    return-object v4
.end method

.method protected inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    .locals 6

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    return-object v2

    :cond_1
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    :goto_1
    move-object v3, v1

    instance-of v4, v1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    :cond_4
    if-eqz p3, :cond_5

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_2

    :cond_5
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    :goto_2
    return-object v1
.end method

.method protected inflateLayout(Ljava/lang/String;)V
    .locals 10

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "NavBarInflater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateLayout newLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, ";"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eq v2, v1, :cond_2

    const-string v2, "NavBarInflater"

    const-string v3, "Invalid layout."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    const-string v2, ";"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v0, v3

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v7, 0x7f0a0131

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    invoke-direct {p0, v2, v6, v8, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    xor-int/2addr v8, v3

    invoke-direct {p0, v2, v6, v8, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v8, 0x7f0a00b1

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    invoke-direct {p0, v4, v6, v9, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    xor-int/2addr v8, v3

    invoke-direct {p0, v4, v6, v8, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    invoke-direct {p0, v5, v6, v8, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    xor-int/2addr v3, v7

    invoke-direct {p0, v5, v6, v3, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->refreshButtonColor()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_nav_bar"

    const-string/jumbo v2, "sysui_nav_bar_left"

    const-string/jumbo v3, "sysui_nav_bar_right"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateChildren()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    return-void
.end method

.method public onLikelyDefaultLayoutChange()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mUsingCustomLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mPlugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mPlugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sysui_nav_bar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mUsingCustomLayout:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "sysui_nav_bar_left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "sysui_nav_bar_right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAlternativeOrder(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder()V

    :cond_0
    return-void
.end method

.method public setButtonDispatchers(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->initiallyFill(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateButtonDispatchersCurrentView()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    :goto_2
    nop

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
