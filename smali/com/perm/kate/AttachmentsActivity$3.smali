.class Lcom/perm/kate/AttachmentsActivity$3;
.super Ljava/lang/Object;
.source "AttachmentsActivity.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v0, v0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v0, v0, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    iget-object p1, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-static {p1}, Lcom/perm/kate/AttachmentsActivity;->access$000(Lcom/perm/kate/AttachmentsActivity;)Lcom/perm/kate/AttachmentsAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-static {p1}, Lcom/perm/kate/AttachmentsActivity;->access$000(Lcom/perm/kate/AttachmentsActivity;)Lcom/perm/kate/AttachmentsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
