.class Lcom/perm/kate/NotesFragment$5$1;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NotesFragment$5;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NotesFragment$5;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$note_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotesFragment$5;Ljava/util/ArrayList;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/NotesFragment$5;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/perm/kate/NotesFragment$5$1;->this$1:Lcom/perm/kate/NotesFragment$5;

    iput-object p2, p0, Lcom/perm/kate/NotesFragment$5$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/NotesFragment$5$1;->val$note_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/perm/kate/NotesFragment$5$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/NotesFragment$5$1;->this$1:Lcom/perm/kate/NotesFragment$5;

    iget-object v0, v0, Lcom/perm/kate/NotesFragment$5;->this$0:Lcom/perm/kate/NotesFragment;

    iget-object v1, p0, Lcom/perm/kate/NotesFragment$5$1;->val$note_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/perm/kate/NotesFragment;->access$200(Lcom/perm/kate/NotesFragment;J)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
