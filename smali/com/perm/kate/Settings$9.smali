.class Lcom/perm/kate/Settings$9;
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

    .line 457
    iput-object p1, p0, Lcom/perm/kate/Settings$9;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 461
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 463
    iget-object v0, p0, Lcom/perm/kate/Settings$9;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 464
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    iget-object p1, p0, Lcom/perm/kate/Settings$9;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03003f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 467
    iget-object v0, p0, Lcom/perm/kate/Settings$9;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p1, p1, p2

    invoke-static {p1}, Lcom/perm/kate/UpdateService;->limitPeriod(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    invoke-static {v0, p1, p2}, Lcom/perm/kate/UpdateService;->schedule(Landroid/content/Context;J)V

    const/4 p1, 0x1

    return p1
.end method
