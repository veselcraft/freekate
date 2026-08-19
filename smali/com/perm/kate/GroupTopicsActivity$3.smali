.class Lcom/perm/kate/GroupTopicsActivity$3;
.super Ljava/lang/Object;
.source "GroupTopicsActivity.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->displayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$3;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$3;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-object v1, v0, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 141
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$3;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lcom/perm/kate/db/DataHelper;->fetchGroupTopics(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    .line 142
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$3;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-object v0, p1, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 143
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$3;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-object p1, p1, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    return-object p1
.end method
