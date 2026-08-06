.class Lcom/perm/kate/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity;->showSearchTypeDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;

.field final synthetic val$force_search:Z

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchActivity$5;->val$menus:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/perm/kate/SearchActivity$5;->val$force_search:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 361
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4200(Lcom/perm/kate/SearchActivity;)V

    .line 365
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4300(Lcom/perm/kate/SearchActivity;)V

    .line 366
    iget-boolean v0, p0, Lcom/perm/kate/SearchActivity$5;->val$force_search:Z

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$000(Lcom/perm/kate/SearchActivity;)V

    .line 368
    :cond_0
    return-void

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 343
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 346
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 349
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Group:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 352
    :pswitch_4
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 355
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->News:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 358
    :pswitch_6
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Doc:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
