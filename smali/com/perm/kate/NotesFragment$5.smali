.class Lcom/perm/kate/NotesFragment$5;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotesFragment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/perm/kate/NotesFragment$5;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    .line 157
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 158
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iget-object p3, p0, Lcom/perm/kate/NotesFragment$5;->this$0:Lcom/perm/kate/NotesFragment;

    iget-object p3, p3, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    sget-object p5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p5}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p5, p3, v0

    if-nez p5, :cond_0

    .line 160
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f00ba

    const/4 p5, 0x3

    invoke-direct {p3, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/perm/kate/NotesFragment$5;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-static {p2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p4

    new-instance p5, Lcom/perm/kate/NotesFragment$5$1;

    invoke-direct {p5, p0, p2, p1}, Lcom/perm/kate/NotesFragment$5$1;-><init>(Lcom/perm/kate/NotesFragment$5;Ljava/util/ArrayList;Ljava/lang/Long;)V

    invoke-virtual {p3, p4, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 172
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x1

    if-lez p2, :cond_1

    .line 173
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 174
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 175
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return p3
.end method
