.class Lcom/perm/kate/Settings$75;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings;->checkPreferencesForOreo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0

    .line 1789
    iput-object p1, p0, Lcom/perm/kate/Settings$75;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    .line 1792
    iget-object p1, p0, Lcom/perm/kate/Settings$75;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$2400(Lcom/perm/kate/Settings;)V

    const/4 p1, 0x1

    return p1
.end method
