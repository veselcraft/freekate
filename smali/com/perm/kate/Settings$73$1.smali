.class Lcom/perm/kate/Settings$73$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$73;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$73;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$73;)V
    .locals 0

    .line 1688
    iput-object p1, p0, Lcom/perm/kate/Settings$73$1;->this$1:Lcom/perm/kate/Settings$73;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1691
    invoke-static {}, Lcom/perm/utils/SettingsBackup;->restore()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1692
    iget-object p1, p0, Lcom/perm/kate/Settings$73$1;->this$1:Lcom/perm/kate/Settings$73;

    iget-object p1, p1, Lcom/perm/kate/Settings$73;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$700(Lcom/perm/kate/Settings;)V

    goto :goto_0

    .line 1694
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const p2, 0x7f0f00d5

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
