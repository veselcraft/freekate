.class Lcom/perm/kate/Settings$21;
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

    .line 646
    iput-object p1, p0, Lcom/perm/kate/Settings$21;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 649
    check-cast p2, Ljava/lang/String;

    .line 650
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 652
    check-cast p1, Landroid/preference/ListPreference;

    .line 653
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 656
    iget-object p1, p0, Lcom/perm/kate/Settings$21;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/utils/NightThemeHelper;->isNight(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 658
    sput-object p2, Lcom/perm/kate/BaseActivity;->theme_id:Ljava/lang/String;

    .line 659
    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->GetThemeByValue(I)I

    move-result p1

    sput p1, Lcom/perm/kate/BaseActivity;->Theme:I

    .line 660
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object p1

    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-virtual {p1, v0, p2}, Lcom/perm/kate/theme/ColorTheme;->updateTheme(ILjava/lang/String;)V

    .line 661
    iget-object p1, p0, Lcom/perm/kate/Settings$21;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p2, p1}, Lcom/perm/kate/theme/ThemeSettingsHelper;->getIsCustomTheme(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    .line 662
    iget-object p1, p0, Lcom/perm/kate/Settings$21;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$700(Lcom/perm/kate/Settings;)V

    .line 664
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/Settings$21;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$800(Lcom/perm/kate/Settings;)V

    .line 665
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_1

    .line 666
    invoke-static {}, Lcom/perm/utils/TaskDescriptionWrapper;->resetTaskDescription()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
