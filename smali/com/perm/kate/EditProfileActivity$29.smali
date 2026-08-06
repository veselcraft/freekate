.class Lcom/perm/kate/EditProfileActivity$29;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity;->getCitiesByText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;

.field final synthetic val$cid:I

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$29;->this$0:Lcom/perm/kate/EditProfileActivity;

    iput-object p2, p0, Lcom/perm/kate/EditProfileActivity$29;->val$s:Ljava/lang/String;

    iput p3, p0, Lcom/perm/kate/EditProfileActivity$29;->val$cid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 818
    const/4 v0, 0x0

    .line 819
    .local v0, "q":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$29;->val$s:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$29;->val$s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 820
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$29;->val$s:Ljava/lang/String;

    .line 821
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget v2, p0, Lcom/perm/kate/EditProfileActivity$29;->val$cid:I

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity$29;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v3}, Lcom/perm/kate/EditProfileActivity;->access$4500(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/EditProfileActivity$29;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/perm/kate/session/Session;->getCitiesByCountry(ILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 822
    return-void
.end method
