.class Lcom/perm/kate/NotesFragment$3;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotesFragment;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/perm/kate/NotesFragment$3;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 112
    iget-object p2, p0, Lcom/perm/kate/NotesFragment$3;->this$0:Lcom/perm/kate/NotesFragment;

    iget-object p2, p2, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/perm/kate/NotesFragment$3;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/perm/kate/AttachmentsHelper;->ShowNoteActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
