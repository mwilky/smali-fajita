.class Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "OPAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPAlertController$AlertParams;->createListView(Lcom/oneplus/lib/app/OPAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

.field final synthetic val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/oneplus/lib/app/OPAlertController$RecycleListView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p6, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;->setItemChecked(IZ)V

    :cond_0
    return-object v0
.end method