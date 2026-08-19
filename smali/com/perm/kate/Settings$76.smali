.class Lcom/perm/kate/Settings$76;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings;->checkPreferencesForOreo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method public static synthetic $r8$lambda$MOXrs1qKSpVZskzHCEPRRfivunA(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perm/kate/Settings$76;->lambda$onPreferenceClick$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0

    .line 1797
    iput-object p1, p0, Lcom/perm/kate/Settings$76;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onPreferenceClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1804
    invoke-static {}, Lcom/perm/kate/notifications/Utils;->resetChannels()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 1800
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/perm/kate/Settings$76;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f03ef

    .line 1801
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f0442

    .line 1802
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/Settings$76$$ExternalSyntheticLambda0;->INSTANCE:Lcom/perm/kate/Settings$76$$ExternalSyntheticLambda0;

    const v1, 0x7f0f05a7

    .line 1803
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f037a

    const/4 v1, 0x0

    .line 1806
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1807
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
