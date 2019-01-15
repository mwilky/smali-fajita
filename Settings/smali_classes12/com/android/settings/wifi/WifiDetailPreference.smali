.class public Lcom/android/settings/wifi/WifiDetailPreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiDetailPreference.java"


# instance fields
.field private mDetailText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d021b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDetailPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a05f2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDetailPreference;->mDetailText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setDetailText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDetailPreference;->mDetailText:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDetailPreference;->mDetailText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDetailPreference;->notifyChanged()V

    return-void
.end method
