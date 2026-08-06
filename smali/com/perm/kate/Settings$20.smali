.class Lcom/perm/kate/Settings$20;
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
    .line 613
    iput-object p1, p0, Lcom/perm/kate/Settings$20;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 616
    new-instance v0, Lcom/perm/kate/Settings$20$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$20$1;-><init>(Lcom/perm/kate/Settings$20;)V

    .line 623
    invoke-virtual {v0}, Lcom/perm/kate/Settings$20$1;->start()V

    .line 624
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/Settings$20;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070065

    .line 625
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070334

    const/4 v2, 0x0

    .line 626
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 629
    const/4 v0, 0x1

    return v0
.end method
