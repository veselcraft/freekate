.class Lcom/perm/kate/Settings$5;
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
    .line 376
    iput-object p1, p0, Lcom/perm/kate/Settings$5;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 380
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 382
    .local v2, "value_index":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/perm/kate/Settings$5;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {v3}, Lcom/perm/kate/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 383
    .local v1, "timer_labels":[Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v1, v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v3, p0, Lcom/perm/kate/Settings$5;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {v3}, Lcom/perm/kate/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 386
    .local v0, "timer_durations":[I
    iget-object v3, p0, Lcom/perm/kate/Settings$5;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {v3}, Lcom/perm/kate/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v4, v0, v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/perm/kate/UpdateService;->schedule(Landroid/content/Context;J)V

    .line 387
    const/4 v3, 0x1

    return v3
.end method
