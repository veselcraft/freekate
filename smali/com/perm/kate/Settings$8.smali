.class Lcom/perm/kate/Settings$8;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/perm/kate/Settings$8;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 451
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 452
    iget-object p2, p0, Lcom/perm/kate/Settings$8;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p2}, Lcom/perm/kate/Settings;->access$400(Lcom/perm/kate/Settings;)Landroid/preference/RingtonePreference;

    move-result-object p2

    iget-object v0, p0, Lcom/perm/kate/Settings$8;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/Settings;->access$500(Lcom/perm/kate/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    return v1
.end method
