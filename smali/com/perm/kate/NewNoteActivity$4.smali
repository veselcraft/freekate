.class Lcom/perm/kate/NewNoteActivity$4;
.super Ljava/lang/Object;
.source "NewNoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewNoteActivity;
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
    .line 99
    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity$4;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$4;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-static {v0}, Lcom/perm/kate/NewNoteActivity;->access$500(Lcom/perm/kate/NewNoteActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$4;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-virtual {v0}, Lcom/perm/kate/NewNoteActivity;->finish()V

    .line 104
    :cond_0
    return-void
.end method
