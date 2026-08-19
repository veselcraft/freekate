.class Lcom/perm/kate/Settings$26;
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

    .line 752
    iput-object p1, p0, Lcom/perm/kate/Settings$26;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 755
    new-instance p1, Lcom/perm/kate/Settings$26$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/Settings$26$1;-><init>(Lcom/perm/kate/Settings$26;)V

    .line 762
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 763
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/perm/kate/Settings$26;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0084

    .line 764
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f0398

    const/4 v1, 0x0

    .line 765
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 766
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 767
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
