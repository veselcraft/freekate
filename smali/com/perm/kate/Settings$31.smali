.class Lcom/perm/kate/Settings$31;
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

    .line 884
    iput-object p1, p0, Lcom/perm/kate/Settings$31;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 887
    iget-object p1, p0, Lcom/perm/kate/Settings$31;->this$0:Lcom/perm/kate/Settings;

    const v0, 0x7f0f03f4

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v1, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    .line 888
    new-instance v0, Lcom/perm/kate/Settings$31$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/Settings$31$1;-><init>(Lcom/perm/kate/Settings$31;Landroid/app/ProgressDialog;)V

    .line 906
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method
