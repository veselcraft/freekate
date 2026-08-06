.class Lcom/perm/kate/NewNoteActivity$3;
.super Ljava/lang/Object;
.source "NewNoteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewNoteActivity;->enableButtonOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewNoteActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewNoteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewNoteActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity$3;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$3;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-static {v0}, Lcom/perm/kate/NewNoteActivity;->access$200(Lcom/perm/kate/NewNoteActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    return-void
.end method
