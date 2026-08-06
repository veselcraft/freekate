.class Lcom/perm/kate/NewMessageActivity$4;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMessageActivity;->enableButtonOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 303
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$800(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    const v1, 0x7f0e00ea

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    const v1, 0x7f0e025b

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    const v1, 0x7f0e025d

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 307
    return-void
.end method
