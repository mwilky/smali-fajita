.class Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/oneplus/lib/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/menu/ListMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getExpandedItem()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v1, v1, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/MenuItemImpl;

    if-ne v4, v0, :cond_0

    iput v3, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    return-void
.end method

.method public getCount()I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget v2, v2, Lcom/oneplus/lib/menu/ListMenuPresenter;->mItemIndexOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-gez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    return v2
.end method

.method public getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget v1, v1, Lcom/oneplus/lib/menu/ListMenuPresenter;->mItemIndexOffset:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v1, v1, Lcom/oneplus/lib/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget v2, v2, Lcom/oneplus/lib/menu/ListMenuPresenter;->mItemLayoutRes:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/oneplus/lib/menu/MenuView$ItemView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/oneplus/lib/menu/MenuView$ItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
