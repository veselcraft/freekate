.class Lcom/perm/kate/DocsFragment$4;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DocsFragment;->displayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/DocsFragment;->access$402(Lcom/perm/kate/DocsFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 129
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v1, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v1}, Lcom/perm/kate/DocsFragment;->access$500(Lcom/perm/kate/DocsFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/DocsFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 130
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v2, v2, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchDocs(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/DocsFragment;->access$502(Lcom/perm/kate/DocsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 131
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v1, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v1}, Lcom/perm/kate/DocsFragment;->access$500(Lcom/perm/kate/DocsFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/DocsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 132
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$500(Lcom/perm/kate/DocsFragment;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
