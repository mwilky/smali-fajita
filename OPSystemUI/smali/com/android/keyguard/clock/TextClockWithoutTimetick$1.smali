.class Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;
.super Landroid/content/BroadcastReceiver;
.source "TextClockWithoutTimetick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/clock/TextClockWithoutTimetick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;


# direct methods
.method constructor <init>(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->access$200(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v1, v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->access$300(Lcom/android/keyguard/clock/TextClockWithoutTimetick;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->access$100(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    return-void
.end method
