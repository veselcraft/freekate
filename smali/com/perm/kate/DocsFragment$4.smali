.class Lcom/perm/kate/DocsFragment$4;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/DocsFragment;->access$702(Lcom/perm/kate/DocsFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 150
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$800(Lcom/perm/kate/DocsFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 151
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, v0, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lcom/perm/kate/db/DataHelper;->fetchDocs(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/perm/kate/DocsFragment;->access$802(Lcom/perm/kate/DocsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 152
    iget-object p1, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {p1}, Lcom/perm/kate/DocsFragment;->access$800(Lcom/perm/kate/DocsFragment;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 153
    iget-object p1, p0, Lcom/perm/kate/DocsFragment$4;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {p1}, Lcom/perm/kate/DocsFragment;->access$800(Lcom/perm/kate/DocsFragment;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
