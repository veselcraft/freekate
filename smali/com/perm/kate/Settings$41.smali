.class Lcom/perm/kate/Settings$41;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    .line 1155
    iput-object p1, p0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/theme/ThemeSettingsHelper;->resetCustomTheme(Landroid/content/Context;)V

    .line 1159
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->resetColor()V

    .line 1160
    iget-object v0, p0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/theme/ThemeSettingsHelper;->getIsCustomTheme(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    .line 1161
    iget-object v0, p0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/Settings;->access$1700(Lcom/perm/kate/Settings;)V

    .line 1162
    iget-object v0, p0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/Settings;->access$500(Lcom/perm/kate/Settings;)V

    .line 1163
    const/4 v0, 0x1

    return v0
.end method
