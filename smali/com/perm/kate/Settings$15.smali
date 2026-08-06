.class Lcom/perm/kate/Settings$15;
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
    .line 515
    iput-object p1, p0, Lcom/perm/kate/Settings$15;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 518
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 519
    .local v2, "x":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "key":I
    move-object v1, p1

    .line 521
    check-cast v1, Landroid/preference/ListPreference;

    .line 522
    .local v1, "listprefs":Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v3, p0, Lcom/perm/kate/Settings$15;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v3}, Lcom/perm/utils/NightThemeHelper;->isNight(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 527
    sput-object v2, Lcom/perm/kate/BaseActivity;->theme_id:Ljava/lang/String;

    .line 528
    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->GetThemeByValue(I)I

    move-result v3

    sput v3, Lcom/perm/kate/BaseActivity;->Theme:I

    .line 529
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v3

    sget v4, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-virtual {v3, v4, v2}, Lcom/perm/kate/theme/ColorTheme;->updateTheme(ILjava/lang/String;)V

    .line 530
    iget-object v3, p0, Lcom/perm/kate/Settings$15;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v2, v3}, Lcom/perm/kate/theme/ThemeSettingsHelper;->getIsCustomTheme(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    .line 531
    iget-object v3, p0, Lcom/perm/kate/Settings$15;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v3}, Lcom/perm/kate/Settings;->access$500(Lcom/perm/kate/Settings;)V

    .line 533
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/Settings$15;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v3}, Lcom/perm/kate/Settings;->access$600(Lcom/perm/kate/Settings;)V

    .line 534
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 535
    invoke-static {}, Lcom/perm/utils/TaskDescriptionWrapper;->resetTaskDescription()V

    .line 536
    :cond_1
    const/4 v3, 0x1

    return v3
.end method
