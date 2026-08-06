.class Lcom/perm/kate/NotesFragment$3;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NotesFragment;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/perm/kate/NotesFragment$3;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 112
    .local v0, "note_id":Ljava/lang/Long;
    iget-object v1, p0, Lcom/perm/kate/NotesFragment$3;->this$0:Lcom/perm/kate/NotesFragment;

    iget-object v1, v1, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/NotesFragment$3;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-virtual {v3}, Lcom/perm/kate/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/perm/kate/AttachmentsHelper;->ShowNoteActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 113
    return-void
.end method
