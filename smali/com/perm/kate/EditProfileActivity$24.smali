.class Lcom/perm/kate/EditProfileActivity$24;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity;->loadCitiesByCountry(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;

.field final synthetic val$cid:I


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$24;->this$0:Lcom/perm/kate/EditProfileActivity;

    iput p2, p0, Lcom/perm/kate/EditProfileActivity$24;->val$cid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 703
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget v1, p0, Lcom/perm/kate/EditProfileActivity$24;->val$cid:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity$24;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v3}, Lcom/perm/kate/EditProfileActivity;->access$4500(Lcom/perm/kate/EditProfileActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/EditProfileActivity$24;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getCitiesByCountry(ILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 704
    return-void
.end method
