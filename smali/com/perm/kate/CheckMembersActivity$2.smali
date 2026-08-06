.class Lcom/perm/kate/CheckMembersActivity$2;
.super Ljava/lang/Object;
.source "CheckMembersActivity.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CheckMembersActivity;->displayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CheckMembersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CheckMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity$2;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity$2;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/CheckMembersActivity;->access$102(Lcom/perm/kate/CheckMembersActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 76
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity$2;->this$0:Lcom/perm/kate/CheckMembersActivity;

    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity$2;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v1}, Lcom/perm/kate/CheckMembersActivity;->access$200(Lcom/perm/kate/CheckMembersActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/CheckMembersActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 77
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity$2;->this$0:Lcom/perm/kate/CheckMembersActivity;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/CheckMembersActivity$2;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v2}, Lcom/perm/kate/CheckMembersActivity;->access$300(Lcom/perm/kate/CheckMembersActivity;)J

    move-result-wide v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/CheckMembersActivity;->access$202(Lcom/perm/kate/CheckMembersActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 78
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity$2;->this$0:Lcom/perm/kate/CheckMembersActivity;

    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity$2;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v1}, Lcom/perm/kate/CheckMembersActivity;->access$200(Lcom/perm/kate/CheckMembersActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/CheckMembersActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 79
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity$2;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v0}, Lcom/perm/kate/CheckMembersActivity;->access$200(Lcom/perm/kate/CheckMembersActivity;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
