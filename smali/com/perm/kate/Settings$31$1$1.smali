.class Lcom/perm/kate/Settings$31$1$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/perm/kate/Settings$31$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$31$1;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/perm/kate/Settings$31$1$1;->this$2:Lcom/perm/kate/Settings$31$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/perm/kate/Settings$31$1$1;->this$2:Lcom/perm/kate/Settings$31$1;

    iget-object v0, v0, Lcom/perm/kate/Settings$31$1;->this$1:Lcom/perm/kate/Settings$31;

    iget-object v0, v0, Lcom/perm/kate/Settings$31;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/Settings$31$1$1;->this$2:Lcom/perm/kate/Settings$31$1;

    iget-object v0, v0, Lcom/perm/kate/Settings$31$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 903
    iget-object v0, p0, Lcom/perm/kate/Settings$31$1$1;->this$2:Lcom/perm/kate/Settings$31$1;

    iget-object v0, v0, Lcom/perm/kate/Settings$31$1;->this$1:Lcom/perm/kate/Settings$31;

    iget-object v0, v0, Lcom/perm/kate/Settings$31;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/Settings;->access$700(Lcom/perm/kate/Settings;)V

    return-void
.end method
