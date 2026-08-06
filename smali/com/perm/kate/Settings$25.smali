.class Lcom/perm/kate/Settings$25;
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
    .line 745
    iput-object p1, p0, Lcom/perm/kate/Settings$25;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 748
    iget-object v1, p0, Lcom/perm/kate/Settings$25;->this$0:Lcom/perm/kate/Settings;

    const-string v2, ""

    iget-object v3, p0, Lcom/perm/kate/Settings$25;->this$0:Lcom/perm/kate/Settings;

    const v4, 0x7f070386

    invoke-virtual {v3, v4}, Lcom/perm/kate/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 749
    .local v0, "pd":Landroid/app/ProgressDialog;
    new-instance v1, Lcom/perm/kate/Settings$25$1;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/Settings$25$1;-><init>(Lcom/perm/kate/Settings$25;Landroid/app/ProgressDialog;)V

    .line 767
    invoke-virtual {v1}, Lcom/perm/kate/Settings$25$1;->start()V

    .line 768
    const/4 v1, 0x1

    return v1
.end method
