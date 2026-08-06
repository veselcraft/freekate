.class Lcom/perm/kate/Settings$25$1$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$25$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/perm/kate/Settings$25$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$25$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/perm/kate/Settings$25$1;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/perm/kate/Settings$25$1$1;->this$2:Lcom/perm/kate/Settings$25$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/perm/kate/Settings$25$1$1;->this$2:Lcom/perm/kate/Settings$25$1;

    iget-object v0, v0, Lcom/perm/kate/Settings$25$1;->this$1:Lcom/perm/kate/Settings$25;

    iget-object v0, v0, Lcom/perm/kate/Settings$25;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {v0}, Lcom/perm/kate/Settings;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/Settings$25$1$1;->this$2:Lcom/perm/kate/Settings$25$1;

    iget-object v0, v0, Lcom/perm/kate/Settings$25$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 764
    iget-object v0, p0, Lcom/perm/kate/Settings$25$1$1;->this$2:Lcom/perm/kate/Settings$25$1;

    iget-object v0, v0, Lcom/perm/kate/Settings$25$1;->this$1:Lcom/perm/kate/Settings$25;

    iget-object v0, v0, Lcom/perm/kate/Settings$25;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/Settings;->access$500(Lcom/perm/kate/Settings;)V

    goto :goto_0
.end method
