.class Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;
.super Landroid/os/Handler;
.source "PreventModeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/PreventModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/PreventModeCtrl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/plugin/PreventModeCtrl;Lcom/android/systemui/plugin/PreventModeCtrl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;-><init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->access$100(Lcom/android/systemui/plugin/PreventModeCtrl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v1}, Lcom/android/systemui/plugin/PreventModeCtrl;->access$600(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-virtual {v1}, Lcom/android/systemui/plugin/PreventModeCtrl;->stopPreventMode()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->access$100(Lcom/android/systemui/plugin/PreventModeCtrl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v1}, Lcom/android/systemui/plugin/PreventModeCtrl;->access$500(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
