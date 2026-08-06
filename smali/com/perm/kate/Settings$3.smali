.class Lcom/perm/kate/Settings$3;
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
    .param p1, "this$0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/perm/kate/Settings$3;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 361
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 362
    .local v0, "b":Z
    iget-object v1, p0, Lcom/perm/kate/Settings$3;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/kate/Settings;->access$300(Lcom/perm/kate/Settings;)Landroid/preference/RingtonePreference;

    move-result-object v3

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/perm/kate/Settings$3;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/kate/Settings;->access$200(Lcom/perm/kate/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 363
    return v2

    .line 362
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
