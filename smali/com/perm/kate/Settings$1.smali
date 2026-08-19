.class Lcom/perm/kate/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings;->onCreate(Landroid/os/Bundle;)V
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

    .line 353
    iput-object p1, p0, Lcom/perm/kate/Settings$1;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 356
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/perm/kate/Settings$1;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/utils/FingerprintManager;->hasEnrolledFingerprints(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/Settings$1;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f02e9

    .line 360
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0427

    .line 361
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0398

    const/4 v2, 0x0

    .line 362
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 364
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 365
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return p2

    :cond_0
    if-eqz p1, :cond_1

    .line 368
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Lcom/perm/kate/BlockActivity;->hasBlockPassword(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 369
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v1, 0x7f0f037b

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return p2

    :cond_1
    return v0
.end method
