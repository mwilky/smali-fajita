.class Lcom/oneplus/doze/NotificationDozeHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationDozeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/doze/NotificationDozeHelper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/NotificationDozeHelper;

.field final synthetic val$dark:Z

.field final synthetic val$target:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/doze/NotificationDozeHelper;ZLandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/doze/NotificationDozeHelper$2;->this$0:Lcom/oneplus/doze/NotificationDozeHelper;

    iput-boolean p2, p0, Lcom/oneplus/doze/NotificationDozeHelper$2;->val$dark:Z

    iput-object p3, p0, Lcom/oneplus/doze/NotificationDozeHelper$2;->val$target:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/doze/NotificationDozeHelper$2;->val$dark:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/NotificationDozeHelper$2;->val$target:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method
