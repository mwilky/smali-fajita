.class Lcom/android/settings/users/UserPreference$1;
.super Ljava/lang/Object;
.source "UserPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/users/UserPreference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserPreference;)I
    .locals 3

    invoke-static {p1}, Lcom/android/settings/users/UserPreference;->access$000(Lcom/android/settings/users/UserPreference;)I

    move-result v0

    invoke-static {p2}, Lcom/android/settings/users/UserPreference;->access$000(Lcom/android/settings/users/UserPreference;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/users/UserPreference;

    check-cast p2, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/users/UserPreference$1;->compare(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserPreference;)I

    move-result p1

    return p1
.end method
