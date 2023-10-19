.class public final Lcom/facebook/ProfileManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ProfileManager$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_CURRENT_PROFILE_CHANGED:Ljava/lang/String; = "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

.field public static final Companion:Lcom/facebook/ProfileManager$Companion;

.field public static final EXTRA_NEW_PROFILE:Ljava/lang/String; = "com.facebook.sdk.EXTRA_NEW_PROFILE"

.field public static final EXTRA_OLD_PROFILE:Ljava/lang/String; = "com.facebook.sdk.EXTRA_OLD_PROFILE"

.field private static volatile instance:Lcom/facebook/ProfileManager;


# instance fields
.field private currentProfileField:Lcom/facebook/Profile;

.field private final localBroadcastManager:L㚬/ᓭ/உ/உ;

.field private final profileCache:Lcom/facebook/ProfileCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/ProfileManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/ProfileManager$Companion;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/ProfileManager;->Companion:Lcom/facebook/ProfileManager$Companion;

    return-void
.end method

.method public constructor <init>(L㚬/ᓭ/உ/உ;Lcom/facebook/ProfileCache;)V
    .locals 1

    const-string v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileCache"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ProfileManager;->localBroadcastManager:L㚬/ᓭ/உ/உ;

    iput-object p2, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/facebook/ProfileManager;
    .locals 1

    sget-object v0, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/facebook/ProfileManager;)V
    .locals 0

    sput-object p0, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/facebook/ProfileManager;
    .locals 2

    const-class v0, Lcom/facebook/ProfileManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/ProfileManager;->Companion:Lcom/facebook/ProfileManager$Companion;

    invoke-virtual {v1}, Lcom/facebook/ProfileManager$Companion;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final sendCurrentProfileChangedBroadcast(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/facebook/ProfileManager;->localBroadcastManager:L㚬/ᓭ/உ/உ;

    invoke-virtual {p1, v0}, L㚬/ᓭ/உ/உ;->㺴(Landroid/content/Intent;)Z

    return-void
.end method

.method private final setCurrentProfile(Lcom/facebook/Profile;Z)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ProfileManager;->currentProfileField:Lcom/facebook/Profile;

    iput-object p1, p0, Lcom/facebook/ProfileManager;->currentProfileField:Lcom/facebook/Profile;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lcom/facebook/ProfileCache;->save(Lcom/facebook/Profile;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ProfileCache;->clear()V

    :cond_1
    :goto_0
    sget-object p2, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/facebook/ProfileManager;->sendCurrentProfileChangedBroadcast(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getCurrentProfile()Lcom/facebook/Profile;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ProfileManager;->currentProfileField:Lcom/facebook/Profile;

    return-object v0
.end method

.method public final loadCurrentProfile()Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {v0}, Lcom/facebook/ProfileCache;->load()Lcom/facebook/Profile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final setCurrentProfile(Lcom/facebook/Profile;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;Z)V

    return-void
.end method
